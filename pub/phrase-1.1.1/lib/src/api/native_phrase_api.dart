import 'dart:convert';

import 'package:http/http.dart';

import '../phrase_exceptions.dart';
import 'base_phrase_api.dart';

class PlatformPhraseApi extends PhraseApi {
  @override
  Future<PhraseApiResult> getPlatformTranslations(Uri uri) async {
    var currentUri = uri;
    String? version;
    while (true) {
      Request req = Request("GET", currentUri)..followRedirects = false;
      StreamedResponse response = await httpClient.send(req);
      int code = response.statusCode;
      if (code == 304) {
        return PhraseApiResult.notModified();
      } else if (code >= 300 && code <= 399) {
        currentUri = Uri.parse(response.headers['location']!);
        version = currentUri.queryParameters['version'];
        continue;
      } else if (code == 200) {
        if (version == null) throw PhraseApiException("Missing version");
        final arb = await response.stream.bytesToString(utf8);
        return PhraseApiResult.success(version, arb);
      } else {
        throw PhraseApiException("Unexpected response code: $code");
      }
    }
  }
}
