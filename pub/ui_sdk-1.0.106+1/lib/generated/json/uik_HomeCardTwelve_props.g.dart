import 'package:ui_sdk/components/UikImage.dart';
import 'package:ui_sdk/generated/json/base/json_convert_content.dart';
import 'package:ui_sdk/props/UikAction.dart';
import 'package:ui_sdk/props/UikHomeCardTwelveProps.dart';
import 'package:ui_sdk/props/UikImageProps.dart';
import 'package:ui_sdk/props/UikTextProps.dart';
import '../../../components/UikContainerText.dart';
import '../../../components/UikText.dart';
import '../../../components/WidgetType.dart';
import '../../../props/UikContainerTextProps.dart';

UikHomeCardTwelveProps $UikHomeCardTwelvePropsFromJson(
    Map<String, dynamic> json) {
  final UikHomeCardTwelveProps uikHomeCardTwelveProps =
      UikHomeCardTwelveProps();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    uikHomeCardTwelveProps.id = id;
  }

  final String? badgeText = jsonConvert.convert<String>(json['badgeText']);
  if (badgeText != null) {
    uikHomeCardTwelveProps.badgeText = UikContainerText(
        WidgetType.UikText, UikContainerTextProps.fromJson(json['badgeText']));
  }

  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    uikHomeCardTwelveProps.text = UikContainerText(
        WidgetType.UikText, UikContainerTextProps.fromJson(json['text']));
  }

  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    uikHomeCardTwelveProps.image = UikImage(
      WidgetType.UikText,
      UikImageProps.fromJson(
        json['image'],
      ),
    );
  }

  final UikAction? action = jsonConvert.convert<UikAction>(json['action']);
  if (action != null) {
    uikHomeCardTwelveProps.action = action;
  }
  return uikHomeCardTwelveProps;
}
