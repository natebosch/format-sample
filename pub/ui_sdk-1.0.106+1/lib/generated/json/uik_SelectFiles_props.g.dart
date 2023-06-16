import 'package:ui_sdk/generated/json/base/json_convert_content.dart';

import '../../props/UikSelectFilesProps.dart';

UikSelectFilesProps $UikSelectFilesPropsFromJson(Map<String, dynamic> json) {
  final UikSelectFilesProps uikSelectFilesProps = UikSelectFilesProps();

  final String? id = jsonConvert.convert<String>(json['id']);

  final double? leftPadding = jsonConvert.convert<double>(json["leftPadding"]);
  final double? rightPadding = jsonConvert.convert<double>(
    json["rightPadding"],
  );
  final double? topPadding = jsonConvert.convert<double>(json["topPadding"]);
  final double? bottomPadding = jsonConvert.convert<double>(
    json["bottomPadding"],
  );

  final double? leftMargin = jsonConvert.convert<double>(json["leftMargin"]);
  final double? rightMargin = jsonConvert.convert<double>(json["rightMargin"]);
  final double? topMargin = jsonConvert.convert<double>(json["topMargin"]);
  final double? bottomMargin = jsonConvert.convert<double>(
    json["bottomMargin"],
  );

  if (id != null) {
    uikSelectFilesProps.id = id;
  }

  if (leftPadding != null) {
    uikSelectFilesProps.leftPadding = leftPadding;
  }

  if (rightPadding != null) {
    uikSelectFilesProps.rightPadding = rightPadding;
  }

  if (topPadding != null) {
    uikSelectFilesProps.topPadding = topPadding;
  }

  if (bottomPadding != null) {
    uikSelectFilesProps.bottomPadding = bottomPadding;
  }

  if (leftMargin != null) {
    uikSelectFilesProps.leftMargin = leftMargin;
  }

  if (rightMargin != null) {
    uikSelectFilesProps.rightMargin = rightMargin;
  }

  if (topMargin != null) {
    uikSelectFilesProps.topMargin = topMargin;
  }

  if (bottomMargin != null) {
    uikSelectFilesProps.bottomMargin = bottomMargin;
  }

  return uikSelectFilesProps;
}

Map<String, dynamic> $UikSelectFilesPropsToJson(UikSelectFilesProps entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  // data['src'] = entity.src;
  // data['action'] = entity.action.toJson();
  return data;
}
