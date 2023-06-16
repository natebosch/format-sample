import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybase/base/abstract/IFFScaffold.dart';
import 'package:mybase/base/config/ColorConfig.dart';
import 'package:mybase/base/config/YCGlobalManger.dart';
import 'package:mybase/base/tool/color/FFColor.dart';
import 'package:mybase/base/tool/platformUtils/FFPlatform.dart';
import 'package:mybase/mybase.dart';
import 'package:mybase_example/demos/TestPage.dart';
import 'package:responsive_builder/responsive_builder.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {

  // 绑定引擎
  WidgetsFlutterBinding.ensureInitialized();

  // 设置状态条
  if (FFPlatform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //全局设置透明
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  // 强制竖屏
  // if (FFPlatform.isAndroid || FFPlatform.isIOS) {
  //   await SystemChrome.setPreferredOrientations(
  //       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // }

  // 全局屏幕断点
  if (FFPlatform.isWeb) {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      const ScreenBreakpoints(desktop: 950, tablet: 550, watch: 300),
    );
  }


  // YCGlobalManger().init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  // final _mybasePlugin = Mybase(); await _mybasePlugin.getPlatformVersion()

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    ColorConfig().bodyColor = Colors.white;
    ColorConfig().statusBackgroundColor = Colors.white;
    ColorConfig().statusTextColor = SystemUiOverlayStyle.dark;
    ColorConfig().splashColor = Colors.yellow;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (ctx){
      return MaterialApp(
        // debugShowCheckedModeBanner: false,
        navigatorObservers: [routeObserver],
        navigatorKey: navigatorKey,
        // title: AppConfig.AppName,
        onGenerateTitle: (context) {
          return "演示";
        },
        theme: ThemeData(
          primarySwatch: FFColor.createMaterialColor(rgba(20, 21, 19, 1)),
          primaryColor: FFColor.createMaterialColor(rgba(20, 21, 19, 1)),
          platform: TargetPlatform.iOS,
        ),
        home: home(),
      );
    });
  }

  Widget home(){
    if (FFPlatform.isWeb) {
      return TestPage();
    }

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, child) {
        return TestPage();
      },
    );
  }
}
