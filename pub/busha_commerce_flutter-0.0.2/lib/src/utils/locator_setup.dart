import 'dart:io';

import 'package:busha_commerce_flutter/src/core/services/account_service.dart';
import 'package:busha_commerce_flutter/src/core/services/auth_service.dart';
import 'package:busha_commerce_flutter/src/core/services/commerce_service.dart';
import 'package:busha_commerce_flutter/src/core/services/http_service.dart';
import 'package:busha_commerce_flutter/src/core/services/payment_service.dart';
import 'package:busha_commerce_flutter/src/core/services/payout_service.dart';
import 'package:busha_commerce_flutter/src/core/services/socket_service.dart';
import 'package:busha_commerce_flutter/src/core/services/url_service.dart';
import 'package:get_it/get_it.dart';

import 'navigation_handler.dart';

final GetIt serviceLocator = GetIt.I;

List<Object> servicesList = [
  AccountService(),
  AuthService(),
  CommerceService(),
  HttpService(),
  PaymentService(),
  PayoutService(),
  SocketService(),
  UrlService()
];

Future locatorSetup() async {

  HttpOverrides.global = HttpServiceOverrides();

  serviceLocator.registerLazySingleton(() => AccountService());
  serviceLocator.registerLazySingleton(() => CommerceService());
  serviceLocator.registerLazySingleton(() => HttpService());
  serviceLocator.registerLazySingleton(() => AuthService());
  serviceLocator.registerLazySingleton(() => PaymentService());
  serviceLocator.registerLazySingleton(() => PayoutService());
  serviceLocator.registerLazySingleton(() => SocketService());
  serviceLocator.registerLazySingleton(() => UrlService());
  serviceLocator.registerLazySingleton(() => NavigationHandler());

}

// Future disposeSetup() async {
//   serviceLocator.reset(dispose: false);
// }
