import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/direction.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/extensions/navigator_state_extensions.dart';
import '../bloc/bloc.dart';
import 'board_widget.dart';
import 'direction_listener.dart';

class GameWidget extends StatefulWidget {
  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  GameBloc _bloc;
  FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode?.dispose();
    _bloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<GameBloc>(context);

    final bool isOnGamePage =
        Navigator.of(context).getCurrentRoute() == RoutePaths.game;
    // to listen on arrow keys, the focus need to be requested but only on the Game page
    if (kIsWeb && isOnGamePage) {
      FocusScope.of(context).requestFocus(_focusNode);
    }

    return AspectRatio(
      aspectRatio: 1,
      child: DirectionListener(
        onDown: () {
          _bloc.add(const MoveEvent(direction: Direction.down));
        },
        onLeft: () {
          _bloc.add(const MoveEvent(direction: Direction.left));
        },
        onRight: () {
          _bloc.add(const MoveEvent(direction: Direction.right));
        },
        onUp: () {
          _bloc.add(const MoveEvent(direction: Direction.up));
        },
        child: BoardWidget(),
      ),
    );
  }
}
