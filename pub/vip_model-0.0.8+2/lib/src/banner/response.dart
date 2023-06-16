import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BannerResponse {
  String name;
  String url;
  String fileId;
  @JsonKey(name: '\$createdAt')
  String createdAt;
  @JsonKey(name: '\$updatedAt')
  String updatedAt;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collectionId')
  String collectionId;
  @JsonKey(name: '\$permissions')
  List<String> permissions;

  BannerResponse({
    this.name = "",
    this.url = "",
    this.fileId = "",
    this.createdAt = "",
    this.updatedAt = "",
    this.documentId = "",
    this.collectionId = "",
    this.permissions = const [],
  });

  factory BannerResponse.fromJson(Map<String, dynamic> json) {
    return _$BannerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerResponseToJson(this);

  @override
  String toString() {
    return 'BannerResponse(name: $name, url: $url, fileId: $fileId, createdAt: $createdAt, updatedAt: $updatedAt, documentId: $documentId, collectionId: $collectionId, permissions: $permissions)';
  }

  BannerResponse copyWith({
    String? name,
    String? url,
    String? fileId,
    String? createdAt,
    String? updatedAt,
    String? documentId,
    String? collectionId,
    List<String>? permissions,
  }) {
    return BannerResponse(
      name: name ?? this.name,
      url: url ?? this.url,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      documentId: documentId ?? this.documentId,
      collectionId: collectionId ?? this.collectionId,
      permissions: permissions ?? this.permissions,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BannerResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode ^ fileId.hashCode;
}
