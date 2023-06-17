import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart'
    as extended;
import 'package:minsk8/import.dart';

// TODO: RefreshIndicator https://github.com/flutter/flutter/blob/v1.15.22/examples/flutter_gallery/lib/demo/material/overscroll_demo.dart
// TODO: rename to PageWrapper

class PageWrapper extends StatefulWidget {
  PageWrapper({
    Key key,
    this.pageIndex,
    this.tabsLength,
    this.getTabName,
    this.dataPool,
    this.buildList,
    this.pullToRefreshNotificationKey,
    this.poolForReloadTabs,
    this.hasAppBar = false,
  }) :
        // assert(
        //   !dataPool.any(
        //     (element) =>
        //         !(element is SourceList || element is List<SourceList>),
        //   ),
        // ),
        super(key: key);

  final int pageIndex;
  final int tabsLength;
  final String Function(int tabIndex) getTabName;
  final List<SourceList> dataPool;
  final Widget Function(int tabIndex) buildList;
  final GlobalKey<PullToRefreshNotificationState> pullToRefreshNotificationKey;
  final Set<int> poolForReloadTabs;
  final bool hasAppBar;

  @override
  PageWrapperState createState() => PageWrapperState();
}

class PageWrapperState extends State<PageWrapper>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int get tabIndex => _tabController.index;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabsLength, vsync: this);
    if (widget.poolForReloadTabs != null &&
        widget.dataPool is List<SourceList>) {
      _addListener();
    }
  }

  void _addListener() {
    // final dataPool = widget.dataPool as List<SourceList>;
    _tabController.addListener(() {
      final sourceList = widget.dataPool[_tabController.index];
      if (!_tabController.indexIsChanging) {
        // out(
        //     'indexIsChanging ${sourceList.isLoadDataByTabChange} ${widget.tabModels[_tabController.index].value}');
        // если для категории еще не было загрузки (переходом по tab-у),
        // то добавление нового unit-а в /add_unit зря добавит tab в widget.poolForReloadTabs,
        // а потому удаление выполняю в любом случае, без оглядки на sourceList.isLoadDataByTabChange
        final isContaintsInPool = widget.poolForReloadTabs.remove(
          _tabController.index,
        );
        if (sourceList.isLoadDataByTabChange) {
          if (_tabController.index > 0) {
            final sourceListBefore = widget.dataPool[_tabController.index - 1];
            sourceListBefore.resetIsLoadDataByTabChange();
          }
          sourceList.resetIsLoadDataByTabChange();
        } else if (isContaintsInPool) {
          // out('pullToRefreshNotificationKey');
          widget.pullToRefreshNotificationKey.currentState.show();
        }
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      controller: _tabController,
      labelColor: Colors.blue,
      indicatorColor: Colors.blue,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      tabs: List.generate(
        widget.tabsLength,
        (int tabIndex) => Tab(text: widget.getTabName(tabIndex)),
      ),
    );
    final tabBarHeight = tabBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final pinnedHeaderHeight =
        // pinned statusBar height
        statusBarHeight +
            // pinned SliverAppBar height in header
            // kToolbarHeight +
            // pinned tabbar height in header
            tabBarHeight;
    final child = extended.NestedScrollView(
      floatHeaderSlivers: widget.hasAppBar,
      physics: ClampingScrollPhysics(),
      pinnedHeaderSliverHeightBuilder: () => pinnedHeaderHeight,
      innerScrollPositionKeyBuilder: () => Key('${widget.pageIndex}-$tabIndex'),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        if (widget.hasAppBar)
          SliverPersistentHeader(
            delegate: CommonSliverPersistentHeaderDelegate(
              builder: (
                BuildContext context,
                double shrinkOffset,
                bool overlapsContent,
              ) {
                return _AppBar();
              },
              height: kToolbarHeight,
            ),
          ),
        PullToRefreshContainer((PullToRefreshScrollNotificationInfo info) {
          return SliverPersistentHeader(
            pinned: true,
            delegate: CommonSliverPersistentHeaderDelegate(
              builder: (
                BuildContext context,
                double shrinkOffset,
                bool overlapsContent,
              ) {
                return _TabBar(
                  info: info,
                  shrinkOffset: shrinkOffset,
                  // overlapsContent: overlapsContent,
                  tabBar: tabBar,
                );
              },
              height: tabBarHeight,
            ),
          );
        }),
      ],
      body: TabBarView(
        controller: _tabController,
        children: List.generate(
          widget.tabsLength,
          (int tabIndex) => widget.buildList(tabIndex),
        ),
      ),
    );
    return PullToRefreshNotification(
      key: widget.pullToRefreshNotificationKey,
      onRefresh: _onRefresh,
      maxDragOffset: kMaxDragOffset,
      child: child,
    );
  }

  Future<bool> _onRefresh() async {
    // out('onRefresh');
    final element = widget.dataPool[_tabController.index];
    // var result = false;
    // if (element is SourceList) {
    final result = await element.handleRefresh();
    // }
    // if (element is List<SourceList>) {
    //   final resultList =
    //       await Future.wait(element.map((element) => element.handleRefresh()));
    //   result = !resultList.contains(false);
    // }
    if (!result) {
      final snackBar = SnackBar(
        content: Text('Не удалось выполнить обновление. Попробуйте ещё раз.'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
    return result;
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExtendedAppBar(
      isForeground: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Без названия',
            style: AppBarTheme.of(context).textTheme.headline6,
          ),
          Container(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              "${appState['ShowcaseMap.address']} — ${appState['ShowcaseMap.radius']} км",
              style: TextStyle(
                fontSize: kFontSize,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          tooltip: 'Настройки',
          icon: Icon(FontAwesomeIcons.slidersH),
          iconSize: kButtonIconSize,
          onPressed: () {
            navigator.push(ShowcaseMapScreen().getRoute());
          },
        ),
        if (isInDebugMode) _LogoutButton(),
      ],
      elevation: 0,
    );
  }
}

class _TabBar extends StatelessWidget {
  _TabBar({
    this.info,
    this.shrinkOffset,
    // this.overlapsContent,
    this.tabBar,
  });

  final PullToRefreshScrollNotificationInfo info;
  final double shrinkOffset;
  // final bool overlapsContent;
  final TabBar tabBar;

  @override
  Widget build(BuildContext context) {
    // TODO: поддерживать темную системную схему
    // TODO: Wrapper for overlayStyle
    // final AppBarTheme appBarTheme = AppBarTheme.of(context);
    // final Brightness brightness = appBarTheme.brightness;
    // final SystemUiOverlayStyle overlayStyle = brightness == Brightness.dark
    //     ? SystemUiOverlayStyle.light
    //     : SystemUiOverlayStyle.dark;
    // final child = AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: overlayStyle,
    //   child:
    //   Material(
    //     elevation: kAppBarElevation,
    //     color: Colors.white,
    //     child: tabBar,
    //   ),
    // );
    final child = Material(
      elevation: kAppBarElevation,
      color: Colors.white,
      child: Center(child: tabBar),
    );
    // TODO: индикатор должен смещаться обратно наполовину, пока идёт загрузка
    // и это работает правильно у приложения Flutter Gallery
    final offset = info?.dragOffset ?? 0.0;
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: <Widget>[
        Positioned(
          top: shrinkOffset + offset,
          left: 0,
          right: 0,
          child: Center(child: info?.refreshWiget),
        ),
        child,
      ],
    );
  }
}

// TODO: перенести кнопку на SettingsScreen
class _LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: Key('$runtimeType'),
      tooltip: 'Logout',
      icon: Icon(FontAwesomeIcons.signOutAlt),
      iconSize: kButtonIconSize,
      onPressed: () => getBloc<AuthenticationCubit>(context).requestLogout(),
    );
  }
}
