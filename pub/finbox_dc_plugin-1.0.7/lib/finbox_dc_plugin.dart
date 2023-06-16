import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';

class FinBoxDcPlugin {
  static const _platform =
      const MethodChannel('in.finbox.lending/deviceconnect');

  static Future<Either<int, String>> createUser(
      String apiKey, String customerId) async {
    try {
      final response = await _platform.invokeMethod('createUser',
          <String, dynamic>{'api_key': apiKey, 'customer_id': customerId});
      return Right(response.toString());
    } on PlatformException catch (e) {
      return Left(int.parse(e.code));
    }
  }

  static Future startPeriodicSync() async {
    try {
      await _platform.invokeListMethod('startPeriodicSync');
    } on PlatformException catch (e) {
      print("Error on periodic sync ${e.message}");
    }
  }

  static Future stopPeriodicSync() async {
    try {
      await _platform.invokeListMethod('stopPeriodicSync');
    } on PlatformException catch (e) {
      print("Error on stop periodic sync ${e.message}");
    }
  }

  static Future setSyncFrequency(int frequency) async {
    try {
      await _platform.invokeListMethod(
          'setSyncFrequency', <String, dynamic>{'frequency': frequency});
    } on PlatformException catch (e) {
      print("Error on stop periodic sync ${e.message}");
    }
  }

  static Future resetData() async {
    try {
      await _platform.invokeListMethod('resetData');
    } on PlatformException catch (e) {
      print("Error on reset data ${e.message}");
    }
  }

  static Future forgetUser() async {
    try {
      await _platform.invokeListMethod('forgetUser');
    } on PlatformException catch (e) {
      print("Error on reset data ${e.message}");
    }
  }

  static Future setDeviceMatch(
      String email, String userName, String phone) async {
    try {
      await _platform.invokeListMethod('setDeviceMatch', <String, dynamic>{
        'email': email,
        'userName': userName,
        'phone': phone
      });
    } on PlatformException catch (e) {
      print("Error on device match ${e.message}");
    }
  }

  static Future forwardFinBoxNotificationToSDK(Map<String, dynamic> data) async {
    await _platform.invokeMapMethod('forwardToFinBoxSDK', data);
  }
}
