//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationMemberType {
  /// Returns a new [ConfigurationMemberType] instance.
  ConfigurationMemberType({
    this.id,
    this.roles = const [],
    this.type,
  });

  /// Returns a new [ConfigurationMemberType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationMemberType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationMemberType(
      id: json[r'id'],
      roles: MemberTypeRole.listFromJson(json[r'roles']),
      type: json[r'type'],
    );
  }

  final String? id;

  List<MemberTypeRole>? roles;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationMemberType &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(roles, other.roles) &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (roles == null ? 0 : roles.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ConfigurationMemberType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationMemberType>[];
    }

    return json.fold(<ConfigurationMemberType>[],
        (List<ConfigurationMemberType> previousValue, element) {
      final ConfigurationMemberType? object =
          ConfigurationMemberType.fromJson(element);
      if (object is ConfigurationMemberType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationMemberType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationMemberType>{};
    }

    return json.entries.fold(<String, ConfigurationMemberType>{},
        (Map<String, ConfigurationMemberType> previousValue, element) {
      final ConfigurationMemberType? object =
          ConfigurationMemberType.fromJson(element.value);
      if (object is ConfigurationMemberType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationMemberType-objects as value to a dart map
  static Map<String, List<ConfigurationMemberType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationMemberType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationMemberType>>(
          key, ConfigurationMemberType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConfigurationMemberType[id=$id, roles=$roles, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (roles != null) r'roles': roles,
      if (type != null) r'type': type,
    };
  }
}
