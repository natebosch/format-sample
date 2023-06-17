import 'package:airbridge_flutter_sdk_example/basic/utility/storage.dart';

import 'package:flutter/material.dart';

import 'package:airbridge_flutter_sdk/airbridge_flutter_sdk.dart';
import 'package:airbridge_flutter_sdk/src/utility/log.dart';

import 'home_page/home_page.dart';
import 'web_page/web_page.dart';
import 'log_page/log_page.dart';
import 'log_page/data/log_item.dart';

class App extends StatefulWidget {
  App() {
    init();
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final navigatorKey = GlobalKey<NavigatorState>();

  HomePage homePage = new HomePage();
  WebPage webPage = new WebPage();
  LogPage logPage = new LogPage();

  int _selectedIndex = 0;

  late void Function(String) deeplinkCallback;

  _AppState() {
    deeplinkCallback = (deeplink) {
      show('Deeplink', deeplink);
    };
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addObserver(this);

    show('Deeplink', Storage.get('deeplink') ?? '');
    Storage.addOnSet('deeplink', deeplinkCallback);
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance?.removeObserver(this);

    Storage.removeOnSet('deeplink', deeplinkCallback);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      (() async {
        Storage.set('deviceUUID', await Airbridge.state.deviceUUID);
      })();
    }
  }

  void show(String title, String content) {
    BuildContext? context = navigatorKey.currentState?.overlay?.context;

    if (context != null) {
      Future.delayed(Duration.zero, () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(title: Text(title), content: Text(content));
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        appBar: AppBar(title: const Text('Airbridge Flutter SDK Example')),
        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Web'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Log'),
          ],
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }

  Widget getBody() {
    switch (_selectedIndex) {
      case 0:
        return homePage;
      case 1:
        return webPage;
      case 2:
        return logPage;
      default:
        return homePage;
    }
  }

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Future<void> init() async {
  Log.addOnLog((message) {
    List<LogItem> logs = Storage.get('logs') ?? [];
    logs.add(LogItem(DateTime.now(), message));

    Storage.set('logs', logs);
  });

  Log.info('init');

  Storage.set(
      'user',
      User(
        id: 'test',
        email: 'test@ab180.co',
        phone: '000-0000-0000',
        alias: {'alias_key1': 'value1', 'alias_key2': 'value2'},
        attributes: {
          'attributes_key2': 3,
          'attributes_key5': 2200000000,
          'attributes_key4': 10.4,
          'attributes_key3': true,
          'attributes_key1': 'value1',
        },
      ));

  Storage.set('deviceUUID', await Airbridge.state.deviceUUID);
}
