//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPatchPermission {
  /// Returns a new [DocumentPatchPermission] instance.
  DocumentPatchPermission({this.targetGroup});

  /// Returns a new [DocumentPatchPermission] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPatchPermission? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchPermission(targetGroup: json[r'targetGroup']);
  }

  String? targetGroup;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchPermission && other.targetGroup == targetGroup;
  }

  @override
  int get hashCode => (targetGroup == null ? 0 : targetGroup.hashCode);

  static List<DocumentPatchPermission> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPatchPermission>[];
    }

    return json.fold(
      <DocumentPatchPermission>[],
      (List<DocumentPatchPermission> previousValue, element) {
        final DocumentPatchPermission? object =
            DocumentPatchPermission.fromJson(element);
        if (object is DocumentPatchPermission) {
          previousValue.add(object);
        }

        return previousValue;
      },
    );
  }

  static Map<String, DocumentPatchPermission> mapFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return <String, DocumentPatchPermission>{};
    }

    return json.entries.fold(
      <String, DocumentPatchPermission>{},
      (Map<String, DocumentPatchPermission> previousValue, element) {
        final DocumentPatchPermission? object =
            DocumentPatchPermission.fromJson(element.value);
        if (object is DocumentPatchPermission) {
          previousValue[element.key] = object;
        }

        return previousValue;
      },
    );
  }

  // maps a json object with a list of DocumentPatchPermission-objects as value to a dart map
  static Map<String, List<DocumentPatchPermission>> mapListFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return <String, List<DocumentPatchPermission>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPatchPermission>>(
        key,
        DocumentPatchPermission.listFromJson(value),
      );
    });
  }

  @override
  String toString() => 'DocumentPatchPermission[targetGroup=$targetGroup]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (targetGroup != null) r'targetGroup': targetGroup,
    };
  }
}
