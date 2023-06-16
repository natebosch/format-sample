import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:mapbox_ad_flutter/mapbox_ad_flutter.dart';
import '../common/pm_logger.dart';
import '../model/remote_config_response.dart';
import '../model/remote_config_variant.dart';
import 'api/api_service.dart';
import 'api/remote_config_source.dart';

@protected
class RemoteConfigAPIService {
  MapboxAdRootConfiguration _config;
  final _api = APIService();
  final _source = RemoteConfigSource();

  RemoteConfigAPIService(this._config);

  Future<MapboxAdRootConfiguration> fetchRemoteConfig() async {
    try {
      final applyRemoteConfig = _config.backend.applyRemoteConfig;
      if (!applyRemoteConfig) return _config;
      final source = _source.fetchReleaseConfig(_config.sdk.env);

      final result = await _api.getRequest(source);
      if (result is Error) {
        throw Exception("Config API failed: $source");
      }
      final http.Response response = (result as Success).value;
      final json = utf8.decode(response.bodyBytes);

      final remoteConfig = RemoteConfigResponse.fromJson(jsonDecode(json));
      PMLogger.d("[RemoteConfig] $remoteConfig");
      final MapboxAdRootConfiguration newConfig = checkVariant(
        _config,
        remoteConfig,
      );
      _config = newConfig;
    } catch (e) {
      return _config;
    }
    return _config;
  }

  MapboxAdRootConfiguration checkVariant(
    MapboxAdRootConfiguration config,
    RemoteConfigResponse remoteConfig,
  ) {
    final random = Random().nextInt(100) + 1;
    final newConfig = _config;
    RemoteConfigVariant variant;
    if (random.clamp(0, remoteConfig.weight) == random) {
      // variant A
      variant = remoteConfig.variantA;
    } else {
      // variant B
      variant = remoteConfig.variantB;
    }

    final env = config.sdk.env;
    // new ad server enabled (skip)
    newConfig.sdk.adServer = MapboxAdServerConfiguration.init(env);
    // new log server enabled (skip)
    newConfig.sdk.eventTrack = MapboxEventTrackConfiguration.init(env);

    // text size transition
    final List<double>? textFontSizeTransition = variant.textFontSizeTransition;
    if (textFontSizeTransition != null) {
      if (textFontSizeTransition.length % 2 == 0) {
        newConfig.backend.styleProperty.textFontSizeTransition =
            textFontSizeTransition;
      }
    }

    // icon scale transition
    final List<double>? iconScaleTransition = variant.iconScaleTransition;
    if (iconScaleTransition != null) {
      if (iconScaleTransition.length % 2 == 0) {
        newConfig.backend.styleProperty.iconScaleTransition =
            iconScaleTransition;
      }
    }

    final int? textOpacity = variant.textOpacity;
    if (textOpacity != null) {
      newConfig.backend.styleProperty.textOpacityZoom = textOpacity;
    }

    // variant ID
    newConfig.backend.variantID = variant.id;
    return newConfig;
  }
}
