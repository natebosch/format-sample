import 'package:ui_sdk/components/UikIcon.dart';
import 'package:ui_sdk/generated/json/base/json_convert_content.dart';
import 'package:ui_sdk/props/UikAction.dart';
import 'package:ui_sdk/props/UikButtonProps.dart';
import 'package:ui_sdk/props/UikPopoverProps.dart';
import 'package:ui_sdk/props/UikIconProps.dart';
import 'package:ui_sdk/components/UikIcon.dart';
import 'package:ui_sdk/generated/json/base/json_convert_content.dart';
import 'package:ui_sdk/props/UikAction.dart';
import 'package:ui_sdk/props/UikButtonProps.dart';
import 'package:ui_sdk/props/UikPopoverProps.dart';
import 'package:ui_sdk/props/UikIconProps.dart';
import 'package:flutter/material.dart';

import '../../components/WidgetType.dart';

UikPopoverProps $UikPopoverPropsFromJson(Map<String, dynamic> json) {
  final UikPopoverProps uikPopoverProps = UikPopoverProps();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    uikPopoverProps.id = id;
  }
  final String? headline = jsonConvert.convert<String>(json['headline']);
  if (headline != null) {
    uikPopoverProps.headline = headline;
  }

  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    uikPopoverProps.description = description;
  }

  final String? textfieldData = jsonConvert.convert<String>(
    json['textfieldData'],
  );
  if (textfieldData != null) {
    uikPopoverProps.textfieldData = textfieldData;
  }

  final String? imageSrc = jsonConvert.convert<String>(json['imageSrc']);
  if (imageSrc != null) {
    uikPopoverProps.imageSrc = imageSrc;
  }

  final dynamic buttonArray = jsonConvert.convert<dynamic>(json['buttonArray']);
  if (buttonArray != null) {
    uikPopoverProps.buttonArray = buttonArray;
  }

  final UikAction? action = jsonConvert.convert<UikAction>(json['action']);
  if (action != null) {
    uikPopoverProps.action = action;
  }
  return uikPopoverProps;
}
