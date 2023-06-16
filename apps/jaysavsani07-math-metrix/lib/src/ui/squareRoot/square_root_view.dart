import 'package:flutter/material.dart';
import 'package:mathgame/src/ui/squareRoot/square_root_view_model.dart';
import 'package:mathgame/src/core/app_constant.dart';
import 'package:mathgame/src/ui/squareRoot/square_root_button.dart';
import 'package:mathgame/src/ui/common/timer.dart';
import 'package:provider/provider.dart';

class SquareRootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SquareRootProvider>(
      create: (_) => SquareRootProvider(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          body: SafeArea(
            top: true,
            bottom: true,
            child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                constraints: BoxConstraints.expand(),
                child: Consumer<SquareRootProvider>(
                  builder: (context, squareRootProvider, child) {
                    return Column(
                      children: <Widget>[
                        Expanded(
                            flex: 10,
                            child: SizedBox(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Timer(GameCategoryType.SQUARE_ROOT),
                              ),
                            )),
                        Expanded(
                            flex: 20,
                            child: Center(
                              child: Visibility(
                                visible: !squareRootProvider.pause,
                                child: Text(
                                  squareRootProvider.currentState.question,
                                  style: Theme.of(context).textTheme.display1,
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 60,
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 300,
                              width: 500,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          SquareRootButton(
                                              squareRootProvider
                                                  .currentState.firstAns,
                                              BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(40))),
                                          SquareRootButton(
                                              squareRootProvider
                                                  .currentState.secondAns,
                                              BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(40)))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          SquareRootButton(
                                              squareRootProvider
                                                  .currentState.thirdAns,
                                              BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(40))),
                                          SquareRootButton(
                                              squareRootProvider
                                                  .currentState.fourthAns,
                                              BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(40)))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Consumer<SquareRootProvider>(
                                    builder: (context, provider, child) {
                                  return IconButton(
                                    icon: provider.pause
                                        ? Icon(Icons.play_arrow)
                                        : Icon(Icons.pause),
                                    iconSize: 40,
                                    onPressed: () {
                                      provider.pauseTimer();
                                    },
                                  );
                                }),
                                Consumer<SquareRootProvider>(
                                    builder: (context, provider, child) {
                                  return IconButton(
                                    icon: Icon(Icons.info_outline),
                                    iconSize: 40,
                                    onPressed: () {
                                      provider.showInfoDialog();
                                    },
                                  );
                                })
                              ],
                            )),
                      ],
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
