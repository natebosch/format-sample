//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksPlaceIriTemplate {
  /// Returns a new [OccupantLinksPlaceIriTemplate] instance.
  OccupantLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksPlaceIriTemplate>[];
    }

    return json.fold(<OccupantLinksPlaceIriTemplate>[],
        (List<OccupantLinksPlaceIriTemplate> previousValue, element) {
      final OccupantLinksPlaceIriTemplate? object =
          OccupantLinksPlaceIriTemplate.fromJson(element);
      if (object is OccupantLinksPlaceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksPlaceIriTemplate>{};
    }

    return json.entries.fold(<String, OccupantLinksPlaceIriTemplate>{},
        (Map<String, OccupantLinksPlaceIriTemplate> previousValue, element) {
      final OccupantLinksPlaceIriTemplate? object =
          OccupantLinksPlaceIriTemplate.fromJson(element.value);
      if (object is OccupantLinksPlaceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksPlaceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksPlaceIriTemplate>>(
          key, OccupantLinksPlaceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
