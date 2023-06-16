import 'package:flutter/animation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hsx_method_channel.dart';

abstract class HsxPlatform extends PlatformInterface {
  /// Constructs a HsxPlatform.
  HsxPlatform() : super(token: _token);

  static final Object _token = Object();

  static HsxPlatform _instance = MethodChannelHsx();

  /// The default instance of [HsxPlatform] to use.
  ///
  /// Defaults to [MethodChannelHsx].
  static HsxPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HsxPlatform] when
  /// they register themselves.
  static set instance(HsxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getShare({
    Rect? sharePositionOrigin,
  }) {
    throw UnimplementedError('getShare() has not been implemented.');
  }
}
