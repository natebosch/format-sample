import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hear2learn/app.dart';
import 'package:hear2learn/helpers/dash.dart' as dash;
import 'package:hear2learn/models/episode.dart';
import 'package:hear2learn/models/episode_action.dart';
import 'package:hear2learn/models/user_episode.dart';
import 'package:hear2learn/redux/selectors.dart';
import 'package:hear2learn/redux/state.dart';
import 'package:path/path.dart';
import 'package:redux/redux.dart';

final Dio dio = Dio();

Future<List<Episode>> getDownloads() async {
  final App app = App();
  final UserEpisodeBean userEpisodeModel = app.models['user_episode'];

  final List<UserEpisode> episodes = await userEpisodeModel.getAll();
  return Future.wait(episodes.map((UserEpisode episode) => getEpisodeWithActions(episode)));
}

Future<Episode> getEpisodeWithActions(UserEpisode userEpisode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];

  final Episode episode = userEpisode.getEpisodeFromDetails();
  final List<EpisodeAction> episodeActions = await episodeActionModel.findWhere(
    episodeActionModel.url.eq(episode.url)
  );

  final EpisodeAction downloadAction =
      dash.find(episodeActions, (EpisodeAction action) => action.type == EpisodeActionType.DOWNLOAD.toString());
  final EpisodeAction favoriteAction =
      dash.find(episodeActions, (EpisodeAction action) => action.type == EpisodeActionType.FAVORITE.toString());
  final EpisodeAction finishAction =
      dash.find(episodeActions, (EpisodeAction action) => action.type == EpisodeActionType.FINISH.toString());
  final EpisodeAction playAction =
      dash.find(episodeActions, (EpisodeAction action) => action.type == EpisodeActionType.PLAY.toString());

  if(downloadAction != null) {
    episode.downloadPath = downloadAction.details;
    episode.status = EpisodeStatus.DOWNLOADED;
  }
  if(favoriteAction != null) {
    episode.isFavorited = true;
  }
  if(playAction != null) {
    episode.setPlayerDetails(playAction.details);
    if(!episode.isPlayedToEnd() && dash.isNotEmpty(episode.downloadPath)) {
      episode.status = EpisodeStatus.PAUSED;
    }
  }
  if(finishAction != null) {
    episode.isFinished = true;
    episode.status = dash.isEmpty(episode.downloadPath)
      ? EpisodeStatus.DELETED
      : episode.isPlayedToEnd()
        ? EpisodeStatus.PLAYED
        : EpisodeStatus.PAUSED;
  }
  return episode;
}

Future<Episode> getUserEpisodeFromUrl(String url) async {
  final App app = App();
  final UserEpisodeBean userEpisodeModel = app.models['user_episode'];
  final UserEpisode userEpisode = await userEpisodeModel.findOneWhere(
    userEpisodeModel.url.eq(url)
  );
  return userEpisode?.getEpisodeFromDetails();
}

Future<void> downloadEpisode(Episode episode, {OnDownloadProgress onProgress}) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  final UserEpisodeBean userEpisodeModel = app.models['user_episode'];

  final String downloadId = EpisodeAction.createNewId();
  final String downloadPath = join(await app.getApplicationDownloadsPath(), '$downloadId.mp3');
  final EpisodeAction download = EpisodeAction(
    actionType: EpisodeActionType.DOWNLOAD,
    details: downloadPath,
    id: downloadId,
    url: episode.url,
  );

  await dio.download(episode.url, downloadPath, onProgress: onProgress);

  await userEpisodeModel.insert(
    UserEpisode(
      details: episode.toJson(),
      url: episode.url,
    )
  );
  await episodeActionModel.removeWhere(
    episodeActionModel.url.eq(episode.url)
  );
  await episodeActionModel.insert(download);

  episode.downloadPath = downloadPath;
  episode.progress = null;
}

Future<void> updateEpisodePosition(Episode episode, Duration position) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  EpisodeAction episodeAction = await episodeActionModel.findOneWhere(
    episodeActionModel.url.eq(episode.url)
      .and(episodeActionModel.type.eq(EpisodeActionType.PLAY.toString()))
  );
  episodeAction ??= EpisodeAction(
    actionType: EpisodeActionType.PLAY,
    url: episode.url,
  );

  await episodeActionModel.upsert(episodeAction.copyWith(
    details: episode.copyWith(position: position).getPlayerDetails(),
  ));
}

Future<void> favoriteEpisode(Episode episode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  await addUserEpisodeIfAbsent(episode);
  await episodeActionModel.insert(EpisodeAction(
    actionType: EpisodeActionType.FAVORITE,
    details: true.toString(),
    url: episode.url,
  ));
}

Future<void> unfavoriteEpisode(Episode episode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  await episodeActionModel.removeWhere(
    episodeActionModel.url.eq(episode.url)
      .and(episodeActionModel.type.eq(EpisodeActionType.FAVORITE.toString()))
  );
}

Future<void> finishEpisode(Episode episode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  await addUserEpisodeIfAbsent(episode);
  await episodeActionModel.insert(EpisodeAction(
    actionType: EpisodeActionType.FINISH,
    details: true.toString(),
    url: episode.url,
  ));
}

Future<void> unfinishEpisode(Episode episode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  await episodeActionModel.removeWhere(
    episodeActionModel.url.eq(episode.url)
      .and(episodeActionModel.type.eq(EpisodeActionType.FINISH.toString()))
  );
}

Future<void> addUserEpisodeIfAbsent(Episode episode) async {
  final App app = App();
  final UserEpisodeBean userEpisodeModel = app.models['user_episode'];
  final Episode existingEpisode = await getUserEpisodeFromUrl(episode.url);
  if(existingEpisode != null) {
    await userEpisodeModel.insert(
      UserEpisode(
        details: episode.toJson(),
        url: episode.url,
      )
    );
  }
}

Future<void> deleteEpisode(Episode episode) async {
  final App app = App();
  final EpisodeActionBean episodeActionModel = app.models['episode_action'];
  final EpisodeAction download = await episodeActionModel.findOneWhere(episodeActionModel.url.eq(episode.url));
  await File(download.details).delete();
  await episodeActionModel.removeWhere(
    episodeActionModel.url.eq(episode.url)
      .and(episodeActionModel.type.eq(EpisodeActionType.DOWNLOAD.toString()))
  );
  episode.downloadPath = null;
}

bool isActive(episode) {
  final App app = App();
  final Store<AppState> store = app.store;
  final Episode currentEpisode = playingEpisodeSelector(store);
  if(episode == null || currentEpisode == null) {
    return false;
  }
  return episode.url == currentEpisode.url;
}
