import 'dart:async';

import 'package:droidkaigi2018/models/room.dart';
import 'package:droidkaigi2018/repository/repository_factory.dart';
import 'package:droidkaigi2018/ui/sessions/room_sessions_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREF_KEY_TAB_INDEX = "pref_key_tab_index";

class AllSessionsPage extends StatefulWidget {
  @override
  State createState() => new AllSessionsPageState();
}

class AllSessionsPageState extends State<AllSessionsPage>
    with TickerProviderStateMixin {
  TabController _controller;
  List<Room> _rooms = [];

  @override
  void initState() {
    super.initState();

    new RepositoryFactory().getRoomRepository().findAll().then(
      (r) => setRooms(r.values.toList()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _saveTabIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("saveTabIndex: ${_controller?.index}");
    prefs.setInt(PREF_KEY_TAB_INDEX, _controller?.index);
  }

  Future<int> _restoreTabIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int tabIndex = prefs.getInt(PREF_KEY_TAB_INDEX);
    return tabIndex != null ? tabIndex : _controller?.index;
  }

  void setRooms(List<Room> rooms) {
    setState(() {
      _rooms = rooms;

      _controller?.dispose();
      _controller = new TabController(vsync: this, length: _rooms.length);
      _controller.addListener(_saveTabIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_rooms.isEmpty) {
      return new Center(child: const CircularProgressIndicator());
    }

    _restoreTabIndex().then((int i) => _controller?.index = i);

    return new Scaffold(
      appBar: new PreferredSize(
        preferredSize: new Size.fromHeight(kTextTabBarHeight),
        child: new Material(
          color: Theme.of(context).primaryColor,
          elevation: 4.0,
          child: new TabBar(
            controller: _controller,
            isScrollable: true,
            tabs: _rooms.map((Room room) => new Tab(text: room.name)).toList(),
          ),
        ),
      ),
      body: new TabBarView(
        controller: _controller,
        children: _rooms.map((Room room) {
          return new RoomSessionsPage(room.id);
        }).toList(),
      ),
    );
  }
}
