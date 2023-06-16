import 'dart:convert';

import 'package:flutter/services.dart';

import 'web_interface.dart';
import '../data/event_option.dart';
import '../data/user.dart';

class AirbridgeWebInterfaceImpl implements AirbridgeWebInterface {

  final MethodChannel _eventMethodChannel;
  final MethodChannel _stateMethodChannel;

  final String _webToken;
  final String Function(String arg) _postCommandFunction;

  String _script = '';

  AirbridgeWebInterfaceImpl(
    this._eventMethodChannel,
    this._stateMethodChannel,
    this._webToken,
    this._postCommandFunction) {
      _script = _getScript();
    }

  @override
  String get script => _script;

  @override
  void handle(String message) {
    Map<String, dynamic> obj = jsonDecode(message);
    switch (obj["method"]) {
      case 'setUser':
        Map<String, dynamic> payload = jsonDecode(obj["payload"]);
        User user = User(
          id: payload["id"],
          email: payload["email"],
          phone: payload["phone"],
          alias: payload["alias"],
          attributes: payload["attributes"],
        );
        _stateMethodChannel.invokeMethod('setUser', user.toMap());
        break;
      case 'clearUser':
        _stateMethodChannel.invokeMethod('setUser', User().toMap());
        break;
      case 'trackEvent':
        Map<String, dynamic> payload = jsonDecode(obj["payload"]);
        Map<String, dynamic> param = {
          'category': payload["category"],
          'option': AirbridgeEventOption(
            action: payload["action"],
            label: payload["label"],
            value: payload["value"],
            customAttributes: payload["custom_attributes"],
            semanticAttributes: payload["semantic_attributes"],
          ).toMap()
        };
        _eventMethodChannel.invokeMethod('trackEvent', param);
        break;
      default:
        print('nothing');
    }
  }

  String _getScript() {
    int jsonSchemaVersion = 4;
    String sdkVersion = "3.2.0";
    String postCommand = _postCommandFunction('arg');
    return """
            AirbridgeNative = {}
            AirbridgeNative.postCommand = function (arg) {
                $postCommand;
            };
            AirbridgeNative.getWebToken = function () {
                return "$_webToken";
            };
            AirbridgeNative.getJsonSchemaVersion = function () {
                return $jsonSchemaVersion;
            };
            AirbridgeNative.getSdkVersion = function () {
                return "$sdkVersion";
            };
            AirbridgeNative.setUser = function (payload) {
                AirbridgeNative.postCommand(JSON.stringify({
                    method: "setUser",
                    payload: payload
                }));
            };
            AirbridgeNative.clearUser = function () {
                AirbridgeNative.postCommand(JSON.stringify({
                    method: "clearUser",
                    payload: {}
                }));
            };
            AirbridgeNative.trackEvent = function (payload) {
                AirbridgeNative.postCommand(JSON.stringify({
                    method: "trackEvent",
                    payload: payload
                }));
            };
        """;
    }
}
