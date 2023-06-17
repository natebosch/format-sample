import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:math';
import 'dart:io';
import '../models/habit.dart';
import '../blocs/bloc_provider.dart';
import '../blocs/habits_bloc.dart';

const padding = 16.0;
const habitHeight = 50.0;
var verticalPadding = 16.0;

class _HabitModifier extends StatelessWidget {
  final Habit habit;
  final titleController = TextEditingController();
  _HabitModifier(this.habit) {
    titleController.text = habit.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(habit.title.length > 0 ? "Edit Habit" : "Add Habit"),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(height: 0.5, color: Colors.white30),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              habit.title.length > 0 ? 'Delete' : '',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Theme(
                    data: ThemeData(dialogBackgroundColor: Color(0xFF333333)),
                    child: AlertDialog(
                      contentPadding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                      content: Text(
                        'Really want to delete this habit?',
                        style: TextStyle(color: Colors.white70),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            'NO',
                            style: TextStyle(color: Colors.white70),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child:
                              Text('YES', style: TextStyle(color: Colors.red)),
                          onPressed: () {
                            final bloc = BlocProvider.of<HabitsBloc>(context);
                            bloc.deleteHabit(habit, context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
        backgroundColor: Color(0xFF212121),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              style: TextStyle(fontSize: 18, color: Colors.white70),
              decoration: InputDecoration(
                fillColor: Color(0xFF424242),
                filled: true,
                hasFloatingPlaceholder: false,
                hintText: "New Habit",
                contentPadding: EdgeInsets.all(6),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Color(0xFF424242)),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
              ),
              controller: titleController,
              onSubmitted: ((value) {
                Navigator.pop(context, habit.rebuild((b) => b..title = value));
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _Habit extends StatelessWidget {
  final Habit habit;
  final double itemWidth;
  final bool isSelected;
  final Function onSelectMore;

  _Habit(
    this.itemWidth,
    this.habit,
    this.onSelectMore, {
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HabitsBloc>(context);
    return GestureDetector(
      onTap: () {
        bloc.selectHabit(habit, context);
      },
      child: Container(
        width: itemWidth,
        margin: EdgeInsets.symmetric(
          horizontal: padding / 2,
          vertical: verticalPadding / 2,
        ),
        decoration: BoxDecoration(
          color: this.isSelected == true ? Colors.blue : Colors.white10,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        // border: Border.all(
        //   color:
        //       this.isSelected == true ? Color(0xFF007AFF) : Colors.black87,
        //   width: this.isSelected == true ? 2 : 1,
        // )),
        padding: EdgeInsets.only(left: 5, right: 5, top: 3.0, bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 4),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  habit.title,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 19,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    habit.createdString,
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  GestureDetector(
                    onTap: () {
                      onSelectMore();
                    },
                    child:
                        Icon(Icons.more_horiz, size: 20, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddHabit extends StatelessWidget {
  final double itemWidth;
  final Function tapHandler;

  _AddHabit(this.itemWidth, this.tapHandler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.tapHandler();
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            constraints: BoxConstraints.tightFor(width: itemWidth),
            height: habitHeight,
            margin: EdgeInsets.symmetric(
              horizontal: padding / 2,
              vertical: verticalPadding / 2,
            ),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Center(
                //   child: Icon(Icons.add),
                // ),
                Text(
                  'Create Habit',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Habits extends StatelessWidget {
  final titleController = TextEditingController();
  final int height;

  Habits(this.height);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HabitsBloc>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final habitWidth = (screenWidth - padding * 3) / 2;
    final habitCount = (height - padding) ~/ (habitHeight + padding) * 2;
    verticalPadding =
        (height - habitHeight * (habitCount ~/ 2)) / (habitCount ~/ 2 + 1);
    final aspect = (habitWidth + padding) / (habitHeight + verticalPadding);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: padding / 2,
        vertical: verticalPadding / 2,
      ),
      // padding: EdgeInsets.only(
      //     left: padding / 2, right: padding / 2, bottom: verticalPadding / 2),
      decoration: BoxDecoration(color: Color(0xFF111111)),
      // border: Border(top: BorderSide(color: Colors.black45, width: 0.5))),
      height: height.toDouble(),
      child: StreamBuilder<BuiltList<Habit>>(
        initialData: BuiltList(),
        stream: bloc.habits,
        builder: (context, snapshot) {
          final habits = snapshot.data;
          if (habits == null || habits.length == 0) {
            return Container(
              padding: EdgeInsets.only(right: padding, bottom: verticalPadding),
              alignment: Alignment.center,
              child: _AddHabit(habitWidth, () async {
                final habit = Habit(
                  (b) => b
                    ..title = ''
                    ..created = DateTime.now().microsecondsSinceEpoch,
                );

                final habitPage = _HabitModifier(habit);
                final newHabit =
                    await Navigator.push<Habit>(context, MaterialPageRoute(
                  builder: (context) {
                    return habitPage;
                  },
                ));

                if (newHabit != null && newHabit.title != '') {
                  bloc.addHabit(newHabit, context);
                }
              }),
            );
          }
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: min(habits.length + 1, habitCount),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: aspect,
            ),
            itemBuilder: (context, index) {
              if (index < habits.length || habits.length == habitCount) {
                return _Habit(habitWidth, habits[index], () async {
                  final habitPage = _HabitModifier(habits[index]);
                  final updatedHabit =
                      await Navigator.push<Habit>(context, MaterialPageRoute(
                    builder: (context) {
                      return habitPage;
                    },
                  ));
                  if (updatedHabit != null && updatedHabit.title != '') {
                    bloc.updateHabit(updatedHabit);
                  }
                }, isSelected: habits[index].isSelected);
              } else {
                return _AddHabit(habitWidth, () async {
                  final habit = Habit(
                    (b) => b
                      ..title = ''
                      ..created = DateTime.now().microsecondsSinceEpoch,
                  );

                  final habitPage = _HabitModifier(habit);
                  final newHabit =
                      await Navigator.push<Habit>(context, MaterialPageRoute(
                    builder: (context) {
                      return habitPage;
                    },
                  ));

                  if (newHabit != null && newHabit.title != '') {
                    bloc.addHabit(newHabit, context);
                  }
                });
              }
            },
          );
        },
      ),
    );
  }
}
