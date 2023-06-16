import 'package:market_commons/models/checkbox_element.dart';
import 'package:market_commons/models/item_option.dart';
import 'package:market_commons/models/option.dart';

class CheckBoxItemOptionModel extends ItemOptionModel {
  final int? min;
  final int? max;
  final Iterable<CheckBoxElementModel> checkboxes;

  CheckBoxItemOptionModel({
    required super.id,
    required super.itemId,
    required super.label,
    required super.updatedAt,
    required super.createdAt,
    required this.min,
    required this.max,
    required this.checkboxes,
  });

  factory CheckBoxItemOptionModel.fromJson(dynamic json) {
    return CheckBoxItemOptionModel(
      id: json["id"],
      itemId: json["itemId"],
      label: json["label"],
      updatedAt: DateTime.parse(json["updatedAt"]).toLocal(),
      createdAt: DateTime.parse(json["createdAt"]).toLocal(),
      min: json["min"],
      max: json["max"],
      checkboxes:
          (json["checkboxes"] as Iterable).map(CheckBoxElementModel.fromJson),
    );
  }

  @override
  CheckBoxItemOptionModel copy({
    String? id,
    String? itemId,
    String? label,
    Option<int>? min,
    Option<int>? max,
    Iterable<CheckBoxElementModel>? checkboxes,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) {
    return CheckBoxItemOptionModel(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      label: label ?? this.label,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      min: min != null ? min.value : this.min,
      max: max != null ? max.value : this.max,
      checkboxes: checkboxes ?? this.checkboxes,
    );
  }
}
