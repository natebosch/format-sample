import 'dart:convert';
import 'package:ui_sdk/generated/json/base/json_field.dart';
import 'package:ui_sdk/generated/json/uik_text_props.g.dart';
import 'package:ui_sdk/props/UikAction.dart';
import 'package:flutter/material.dart';

import '../generated/json/uik_scroll_order_again_product_props.g.dart';
import 'WidgetProps.dart';

@JsonSerializable()
class UikScrollOrderAgainProductProps extends WidgetProps {
  late String id;
  late String text = "";
  late UikAction action;
  late List<dynamic> ll = [];

  UikScrollOrderAgainProductProps();

  factory UikScrollOrderAgainProductProps.fromJson(Map<String, dynamic> json) =>
      $UikScrollOrderAgainProductPropsFromJson(json);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
