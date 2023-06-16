// ignore_for_file: file_names

import 'dart:convert';
import 'package:ui_sdk/generated/json/base/json_field.dart';
import 'package:ui_sdk/generated/json/uik_HomeCardFour_props.dart';
import 'package:ui_sdk/props/UikAction.dart';
import 'package:flutter/material.dart';
import 'WidgetProps.dart';

@JsonSerializable()
class UikHomeCardFourProps extends WidgetProps {
  late String id;
  late Widget? image;
  late Widget? text;
  late Widget? tag;
  late UikAction action;

  UikHomeCardFourProps();

  factory UikHomeCardFourProps.fromJson(Map<String, dynamic> json) =>
      $UikHomeCardFourPropsFromJson(json);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
