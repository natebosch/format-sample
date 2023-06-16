import 'package:ui_sdk/components/UikWidget.dart';
import 'package:ui_sdk/components/WidgetType.dart';
import 'package:flutter/material.dart';
import '../props/UikSlidderProps.dart';
import 'PolygonSlidderThumb.dart';
import 'duoPolygonSlidderThumb.dart';

class UikSlidder extends UikWidget {
  WidgetType _widgetType;
  UikSlidderProps _uikSlidderProps;
  UikSlidder(this._widgetType, this._uikSlidderProps)
    : super(_widgetType, _uikSlidderProps);

  @override
  _UikSlidderState createState() => _UikSlidderState(_uikSlidderProps);
}

class _UikSlidderState extends State<UikSlidder> {
  UikSlidderProps _uikSlidderProps;
  _UikSlidderState(this._uikSlidderProps);

  double initialValue = 0;
  RangeValues initialValues = RangeValues(0, 10);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 2,
              thumbShape: (_uikSlidderProps.isRounded != null)
                  ? RoundSliderThumbShape()
                  : PolygonSliderThumb(thumbRadius: 4),
              rangeThumbShape: (_uikSlidderProps.isRounded != null)
                  ? RoundRangeSliderThumbShape()
                  : DuoPolygonSliderThumb(thumbRadius: 4),
            ),
            child: (_uikSlidderProps.isRange == null)
                ? Container(
                    width: _uikSlidderProps.trackWidth,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${initialValue}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: initialValue,
                          min: _uikSlidderProps.minimum,
                          max: _uikSlidderProps.maximum,
                          divisions: 10,
                          activeColor: Color(0xFFFEE440),
                          inactiveColor: Color(0xFFEEEEEE),
                          label: 'Set volume value',
                          onChanged: (value) {
                            setState(() {
                              initialValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: _uikSlidderProps.trackWidth,
                    child: Column(
                      children: [
                        Row(
                          //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                '${double.parse((initialValues.start).toStringAsFixed(
                                  2,
                                ))}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                '${double.parse((initialValues.end).toStringAsFixed(
                                  2,
                                ))}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        RangeSlider(
                          min: _uikSlidderProps.minimum,
                          max: _uikSlidderProps.maximum,
                          values: initialValues,
                          activeColor: Color(0xFFFEE440),
                          inactiveColor: Color(0xFFEEEEEE),
                          onChanged: (value) {
                            setState(() {
                              initialValues = value;
                              print(initialValues);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
