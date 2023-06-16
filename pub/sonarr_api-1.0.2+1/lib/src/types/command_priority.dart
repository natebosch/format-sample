import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonarr_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SonarrCommandPriority with EnumSerializableMixin {
  high('high'),
  low('low'),
  normal('normal');

  @override
  final String name;

  const SonarrCommandPriority(this.name);
}
