// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint, , unnecessary_question_mark, unnecessary_null_comparison
/* spellchecker: disable */ import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$ClaimPendingCodes {
  Fragment$ClaimPendingCodes({
    required this.id,
    this.extended_text,
    required this.status,
    required this.code,
    required this.pending_code,
    this.$__typename = 'claim_pending_codes',
  });

  factory Fragment$ClaimPendingCodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$extended_text = json['extended_text'];
    final l$status = json['status'];
    final l$code = json['code'];
    final l$pending_code = json['pending_code'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimPendingCodes(
      id: (l$id as String),
      extended_text: (l$extended_text as String?),
      status:
          fromJson$Enum$claim_pending_code_statuses_enum((l$status as String)),
      code: (l$code as String),
      pending_code: Fragment$ClaimPendingCodes$pending_code.fromJson(
        (l$pending_code as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? extended_text;

  final Enum$claim_pending_code_statuses_enum status;

  final String code;

  final Fragment$ClaimPendingCodes$pending_code pending_code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$extended_text = extended_text;
    _resultData['extended_text'] = l$extended_text;
    final l$status = status;
    _resultData['status'] = toJson$Enum$claim_pending_code_statuses_enum(
      l$status,
    );
    final l$code = code;
    _resultData['code'] = l$code;
    final l$pending_code = pending_code;
    _resultData['pending_code'] = l$pending_code.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$extended_text = extended_text;
    final l$status = status;
    final l$code = code;
    final l$pending_code = pending_code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$extended_text,
      l$status,
      l$code,
      l$pending_code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimPendingCodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$extended_text = extended_text;
    final lOther$extended_text = other.extended_text;
    if (l$extended_text != lOther$extended_text) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$pending_code = pending_code;
    final lOther$pending_code = other.pending_code;
    if (l$pending_code != lOther$pending_code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimPendingCodes
    on Fragment$ClaimPendingCodes {
  CopyWith$Fragment$ClaimPendingCodes<Fragment$ClaimPendingCodes>
  get copyWith => CopyWith$Fragment$ClaimPendingCodes(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimPendingCodes<TRes> {
  factory CopyWith$Fragment$ClaimPendingCodes(
    Fragment$ClaimPendingCodes instance,
    TRes Function(Fragment$ClaimPendingCodes) then,
  ) = _CopyWithImpl$Fragment$ClaimPendingCodes;

  factory CopyWith$Fragment$ClaimPendingCodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimPendingCodes;

  TRes call({
    String? id,
    String? extended_text,
    Enum$claim_pending_code_statuses_enum? status,
    String? code,
    Fragment$ClaimPendingCodes$pending_code? pending_code,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes> get pending_code;
}

class _CopyWithImpl$Fragment$ClaimPendingCodes<TRes>
    implements CopyWith$Fragment$ClaimPendingCodes<TRes> {
  _CopyWithImpl$Fragment$ClaimPendingCodes(this._instance, this._then);

  final Fragment$ClaimPendingCodes _instance;

  final TRes Function(Fragment$ClaimPendingCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? extended_text = _undefined,
    Object? status = _undefined,
    Object? code = _undefined,
    Object? pending_code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimPendingCodes(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    extended_text: extended_text == _undefined
        ? _instance.extended_text
        : (extended_text as String?),
    status: status == _undefined || status == null
        ? _instance.status
        : (status as Enum$claim_pending_code_statuses_enum),
    code: code == _undefined || code == null
        ? _instance.code
        : (code as String),
    pending_code: pending_code == _undefined || pending_code == null
        ? _instance.pending_code
        : (pending_code as Fragment$ClaimPendingCodes$pending_code),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes> get pending_code {
    final local$pending_code = _instance.pending_code;
    return CopyWith$Fragment$ClaimPendingCodes$pending_code(
      local$pending_code,
      (e) => call(pending_code: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimPendingCodes<TRes>
    implements CopyWith$Fragment$ClaimPendingCodes<TRes> {
  _CopyWithStubImpl$Fragment$ClaimPendingCodes(this._res);

  TRes _res;

  call({
    String? id,
    String? extended_text,
    Enum$claim_pending_code_statuses_enum? status,
    String? code,
    Fragment$ClaimPendingCodes$pending_code? pending_code,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes>
  get pending_code => CopyWith$Fragment$ClaimPendingCodes$pending_code.stub(
    _res,
  );
}

const fragmentDefinitionClaimPendingCodes = FragmentDefinitionNode(
  name: NameNode(value: 'ClaimPendingCodes'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'claim_pending_codes'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'claim_pending_code_id'),
        alias: NameNode(value: 'id'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'extended_text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'pending_code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'document_type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentClaimPendingCodes = DocumentNode(
  definitions: [fragmentDefinitionClaimPendingCodes],
);

extension ClientExtension$Fragment$ClaimPendingCodes on graphql.GraphQLClient {
  void writeFragment$ClaimPendingCodes({
    required Fragment$ClaimPendingCodes data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(graphql.FragmentRequest(
    idFields: idFields,
    fragment: const graphql.Fragment(
      fragmentName: 'ClaimPendingCodes',
      document: documentNodeFragmentClaimPendingCodes,
    ),
  ), data: data.toJson(), broadcast: broadcast);
  Fragment$ClaimPendingCodes? readFragment$ClaimPendingCodes({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'ClaimPendingCodes',
        document: documentNodeFragmentClaimPendingCodes,
      ),
    ), optimistic: optimistic);
    return result == null ? null : Fragment$ClaimPendingCodes.fromJson(result);
  }
}

class Fragment$ClaimPendingCodes$pending_code {
  Fragment$ClaimPendingCodes$pending_code({
    required this.description,
    required this.code,
    required this.document_type,
    this.$__typename = 'pending_codes',
  });

  factory Fragment$ClaimPendingCodes$pending_code.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$code = json['code'];
    final l$document_type = json['document_type'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimPendingCodes$pending_code(
      description: (l$description as String),
      code: (l$code as String),
      document_type:
          fromJson$Enum$claim_document_types_enum((l$document_type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String code;

  final Enum$claim_document_types_enum document_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$document_type = document_type;
    _resultData['document_type'] = toJson$Enum$claim_document_types_enum(
      l$document_type,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$code = code;
    final l$document_type = document_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$code,
      l$document_type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimPendingCodes$pending_code) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$document_type = document_type;
    final lOther$document_type = other.document_type;
    if (l$document_type != lOther$document_type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimPendingCodes$pending_code
    on Fragment$ClaimPendingCodes$pending_code {
  CopyWith$Fragment$ClaimPendingCodes$pending_code<
    Fragment$ClaimPendingCodes$pending_code
  > get copyWith => CopyWith$Fragment$ClaimPendingCodes$pending_code(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes> {
  factory CopyWith$Fragment$ClaimPendingCodes$pending_code(
    Fragment$ClaimPendingCodes$pending_code instance,
    TRes Function(Fragment$ClaimPendingCodes$pending_code) then,
  ) = _CopyWithImpl$Fragment$ClaimPendingCodes$pending_code;

  factory CopyWith$Fragment$ClaimPendingCodes$pending_code.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimPendingCodes$pending_code;

  TRes call({
    String? description,
    String? code,
    Enum$claim_document_types_enum? document_type,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ClaimPendingCodes$pending_code<TRes>
    implements CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes> {
  _CopyWithImpl$Fragment$ClaimPendingCodes$pending_code(
    this._instance,
    this._then,
  );

  final Fragment$ClaimPendingCodes$pending_code _instance;

  final TRes Function(Fragment$ClaimPendingCodes$pending_code) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? code = _undefined,
    Object? document_type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimPendingCodes$pending_code(
    description: description == _undefined || description == null
        ? _instance.description
        : (description as String),
    code: code == _undefined || code == null
        ? _instance.code
        : (code as String),
    document_type: document_type == _undefined || document_type == null
        ? _instance.document_type
        : (document_type as Enum$claim_document_types_enum),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimPendingCodes$pending_code<TRes>
    implements CopyWith$Fragment$ClaimPendingCodes$pending_code<TRes> {
  _CopyWithStubImpl$Fragment$ClaimPendingCodes$pending_code(this._res);

  TRes _res;

  call({
    String? description,
    String? code,
    Enum$claim_document_types_enum? document_type,
    String? $__typename,
  }) => _res;
}

class Fragment$ClaimDocuments {
  Fragment$ClaimDocuments({
    this.file,
    required this.type,
    required this.source,
    required this.id,
    required this.claim_document_id,
    this.$__typename = 'claim_documents',
  });

  factory Fragment$ClaimDocuments.fromJson(Map<String, dynamic> json) {
    final l$file = json['file'];
    final l$type = json['type'];
    final l$source = json['source'];
    final l$id = json['id'];
    final l$claim_document_id = json['claim_document_id'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimDocuments(
      file: l$file == null
          ? null
          : Fragment$ClaimDocuments$file.fromJson(
              (l$file as Map<String, dynamic>),
            ),
      type: fromJson$Enum$claim_document_types_enum((l$type as String)),
      source: fromJson$Enum$claim_sources_enum((l$source as String)),
      id: (l$id as String),
      claim_document_id: (l$claim_document_id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ClaimDocuments$file? file;

  final Enum$claim_document_types_enum type;

  final Enum$claim_sources_enum source;

  final String id;

  final String claim_document_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$file = file;
    _resultData['file'] = l$file?.toJson();
    final l$type = type;
    _resultData['type'] = toJson$Enum$claim_document_types_enum(l$type);
    final l$source = source;
    _resultData['source'] = toJson$Enum$claim_sources_enum(l$source);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$claim_document_id = claim_document_id;
    _resultData['claim_document_id'] = l$claim_document_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$file = file;
    final l$type = type;
    final l$source = source;
    final l$id = id;
    final l$claim_document_id = claim_document_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$file,
      l$type,
      l$source,
      l$id,
      l$claim_document_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimDocuments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$claim_document_id = claim_document_id;
    final lOther$claim_document_id = other.claim_document_id;
    if (l$claim_document_id != lOther$claim_document_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimDocuments on Fragment$ClaimDocuments {
  CopyWith$Fragment$ClaimDocuments<Fragment$ClaimDocuments>
  get copyWith => CopyWith$Fragment$ClaimDocuments(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimDocuments<TRes> {
  factory CopyWith$Fragment$ClaimDocuments(
    Fragment$ClaimDocuments instance,
    TRes Function(Fragment$ClaimDocuments) then,
  ) = _CopyWithImpl$Fragment$ClaimDocuments;

  factory CopyWith$Fragment$ClaimDocuments.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimDocuments;

  TRes call({
    Fragment$ClaimDocuments$file? file,
    Enum$claim_document_types_enum? type,
    Enum$claim_sources_enum? source,
    String? id,
    String? claim_document_id,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimDocuments$file<TRes> get file;
}

class _CopyWithImpl$Fragment$ClaimDocuments<TRes>
    implements CopyWith$Fragment$ClaimDocuments<TRes> {
  _CopyWithImpl$Fragment$ClaimDocuments(this._instance, this._then);

  final Fragment$ClaimDocuments _instance;

  final TRes Function(Fragment$ClaimDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? file = _undefined,
    Object? type = _undefined,
    Object? source = _undefined,
    Object? id = _undefined,
    Object? claim_document_id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimDocuments(
    file: file == _undefined
        ? _instance.file
        : (file as Fragment$ClaimDocuments$file?),
    type: type == _undefined || type == null
        ? _instance.type
        : (type as Enum$claim_document_types_enum),
    source: source == _undefined || source == null
        ? _instance.source
        : (source as Enum$claim_sources_enum),
    id: id == _undefined || id == null ? _instance.id : (id as String),
    claim_document_id:
        claim_document_id == _undefined || claim_document_id == null
            ? _instance.claim_document_id
            : (claim_document_id as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimDocuments$file<TRes> get file {
    final local$file = _instance.file;
    return local$file == null
        ? CopyWith$Fragment$ClaimDocuments$file.stub(_then(_instance))
        : CopyWith$Fragment$ClaimDocuments$file(
            local$file,
            (e) => call(file: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$ClaimDocuments<TRes>
    implements CopyWith$Fragment$ClaimDocuments<TRes> {
  _CopyWithStubImpl$Fragment$ClaimDocuments(this._res);

  TRes _res;

  call({
    Fragment$ClaimDocuments$file? file,
    Enum$claim_document_types_enum? type,
    Enum$claim_sources_enum? source,
    String? id,
    String? claim_document_id,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimDocuments$file<TRes>
  get file => CopyWith$Fragment$ClaimDocuments$file.stub(_res);
}

const fragmentDefinitionClaimDocuments = FragmentDefinitionNode(
  name: NameNode(value: 'ClaimDocuments'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'claim_documents'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'file'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'file_id'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'file_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'mime_type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'source'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_document_id'),
        alias: NameNode(value: 'id'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_document_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentClaimDocuments = DocumentNode(
  definitions: [fragmentDefinitionClaimDocuments],
);

extension ClientExtension$Fragment$ClaimDocuments on graphql.GraphQLClient {
  void writeFragment$ClaimDocuments({
    required Fragment$ClaimDocuments data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(graphql.FragmentRequest(
    idFields: idFields,
    fragment: const graphql.Fragment(
      fragmentName: 'ClaimDocuments',
      document: documentNodeFragmentClaimDocuments,
    ),
  ), data: data.toJson(), broadcast: broadcast);
  Fragment$ClaimDocuments? readFragment$ClaimDocuments({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'ClaimDocuments',
        document: documentNodeFragmentClaimDocuments,
      ),
    ), optimistic: optimistic);
    return result == null ? null : Fragment$ClaimDocuments.fromJson(result);
  }
}

class Fragment$ClaimDocuments$file {
  Fragment$ClaimDocuments$file({
    required this.id,
    required this.file_id,
    this.url,
    required this.name,
    required this.mime_type,
    this.$__typename = 'files',
  });

  factory Fragment$ClaimDocuments$file.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$file_id = json['file_id'];
    final l$url = json['url'];
    final l$name = json['name'];
    final l$mime_type = json['mime_type'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimDocuments$file(
      id: (l$id as String),
      file_id: (l$file_id as String),
      url: (l$url as String?),
      name: (l$name as String),
      mime_type: (l$mime_type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String file_id;

  final String? url;

  final String name;

  final String mime_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$file_id = file_id;
    _resultData['file_id'] = l$file_id;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$mime_type = mime_type;
    _resultData['mime_type'] = l$mime_type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$file_id = file_id;
    final l$url = url;
    final l$name = name;
    final l$mime_type = mime_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$file_id,
      l$url,
      l$name,
      l$mime_type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimDocuments$file) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$file_id = file_id;
    final lOther$file_id = other.file_id;
    if (l$file_id != lOther$file_id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$mime_type = mime_type;
    final lOther$mime_type = other.mime_type;
    if (l$mime_type != lOther$mime_type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimDocuments$file
    on Fragment$ClaimDocuments$file {
  CopyWith$Fragment$ClaimDocuments$file<Fragment$ClaimDocuments$file>
  get copyWith => CopyWith$Fragment$ClaimDocuments$file(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimDocuments$file<TRes> {
  factory CopyWith$Fragment$ClaimDocuments$file(
    Fragment$ClaimDocuments$file instance,
    TRes Function(Fragment$ClaimDocuments$file) then,
  ) = _CopyWithImpl$Fragment$ClaimDocuments$file;

  factory CopyWith$Fragment$ClaimDocuments$file.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimDocuments$file;

  TRes call({
    String? id,
    String? file_id,
    String? url,
    String? name,
    String? mime_type,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ClaimDocuments$file<TRes>
    implements CopyWith$Fragment$ClaimDocuments$file<TRes> {
  _CopyWithImpl$Fragment$ClaimDocuments$file(this._instance, this._then);

  final Fragment$ClaimDocuments$file _instance;

  final TRes Function(Fragment$ClaimDocuments$file) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? file_id = _undefined,
    Object? url = _undefined,
    Object? name = _undefined,
    Object? mime_type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimDocuments$file(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    file_id: file_id == _undefined || file_id == null
        ? _instance.file_id
        : (file_id as String),
    url: url == _undefined ? _instance.url : (url as String?),
    name: name == _undefined || name == null
        ? _instance.name
        : (name as String),
    mime_type: mime_type == _undefined || mime_type == null
        ? _instance.mime_type
        : (mime_type as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimDocuments$file<TRes>
    implements CopyWith$Fragment$ClaimDocuments$file<TRes> {
  _CopyWithStubImpl$Fragment$ClaimDocuments$file(this._res);

  TRes _res;

  call({
    String? id,
    String? file_id,
    String? url,
    String? name,
    String? mime_type,
    String? $__typename,
  }) => _res;
}

class Fragment$ClaimCases {
  Fragment$ClaimCases({
    required this.id,
    this.original_claim_case,
    required this.benefit_type,
    required this.insured_benefit_type,
    this.medical_provider_name,
    this.diagnosis,
    required this.claim_case_status,
    required this.created_at,
    required this.is_direct_billing,
    required this.insured_person,
    this.event_dates,
    this.request_amount,
    this.payment_bank_name,
    this.payment_bank_city,
    this.payment_bank_branch,
    this.payment_account_number,
    this.payment_account_name,
    this.medical_provider_phones,
    required this.status,
    required this.code,
    this.event_date,
    required this.claim_case_input_diagnoses,
    this.diseases,
    this.treatment_method,
    required this.action_logs,
    this.admission_date,
    required this.claim_case_details,
    this.discharge_date,
    this.physical_examination_date,
    required this.claim_pending_codes,
    required this.claim_documents,
    required this.assessment_summary,
    this.created_by_user,
    this.$__typename = 'claim_cases',
  });

  factory Fragment$ClaimCases.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$original_claim_case = json['original_claim_case'];
    final l$benefit_type = json['benefit_type'];
    final l$insured_benefit_type = json['insured_benefit_type'];
    final l$medical_provider_name = json['medical_provider_name'];
    final l$diagnosis = json['diagnosis'];
    final l$claim_case_status = json['claim_case_status'];
    final l$created_at = json['created_at'];
    final l$is_direct_billing = json['is_direct_billing'];
    final l$insured_person = json['insured_person'];
    final l$event_dates = json['event_dates'];
    final l$request_amount = json['request_amount'];
    final l$payment_bank_name = json['payment_bank_name'];
    final l$payment_bank_city = json['payment_bank_city'];
    final l$payment_bank_branch = json['payment_bank_branch'];
    final l$payment_account_number = json['payment_account_number'];
    final l$payment_account_name = json['payment_account_name'];
    final l$medical_provider_phones = json['medical_provider_phones'];
    final l$status = json['status'];
    final l$code = json['code'];
    final l$event_date = json['event_date'];
    final l$claim_case_input_diagnoses = json['claim_case_input_diagnoses'];
    final l$diseases = json['diseases'];
    final l$treatment_method = json['treatment_method'];
    final l$action_logs = json['action_logs'];
    final l$admission_date = json['admission_date'];
    final l$claim_case_details = json['claim_case_details'];
    final l$discharge_date = json['discharge_date'];
    final l$physical_examination_date = json['physical_examination_date'];
    final l$claim_pending_codes = json['claim_pending_codes'];
    final l$claim_documents = json['claim_documents'];
    final l$assessment_summary = json['assessment_summary'];
    final l$created_by_user = json['created_by_user'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases(
      id: (l$id as String),
      original_claim_case: l$original_claim_case == null
          ? null
          : Fragment$ClaimCases$original_claim_case.fromJson(
              (l$original_claim_case as Map<String, dynamic>),
            ),
      benefit_type:
          fromJson$Enum$insured_benefit_types_enum((l$benefit_type as String)),
      insured_benefit_type: Fragment$ClaimCases$insured_benefit_type.fromJson(
        (l$insured_benefit_type as Map<String, dynamic>),
      ),
      medical_provider_name: (l$medical_provider_name as String?),
      diagnosis: (l$diagnosis as String?),
      claim_case_status: Fragment$ClaimCases$claim_case_status.fromJson(
        (l$claim_case_status as Map<String, dynamic>),
      ),
      created_at: (l$created_at as String),
      is_direct_billing: (l$is_direct_billing as bool),
      insured_person: Fragment$ClaimCases$insured_person.fromJson(
        (l$insured_person as Map<String, dynamic>),
      ),
      event_dates: (l$event_dates as String?),
      request_amount: (l$request_amount as num?)?.toDouble(),
      payment_bank_name: (l$payment_bank_name as String?),
      payment_bank_city: (l$payment_bank_city as String?),
      payment_bank_branch: (l$payment_bank_branch as String?),
      payment_account_number: (l$payment_account_number as String?),
      payment_account_name: (l$payment_account_name as String?),
      medical_provider_phones: (l$medical_provider_phones as String?),
      status: fromJson$Enum$claim_case_statuses_enum((l$status as String)),
      code: (l$code as String),
      event_date: (l$event_date as String?),
      claim_case_input_diagnoses:
          (l$claim_case_input_diagnoses as List<dynamic>).map(
            (e) => Fragment$ClaimCases$claim_case_input_diagnoses.fromJson(
              (e as Map<String, dynamic>),
            ),
          ).toList(),
      diseases: (l$diseases as String?),
      treatment_method: (l$treatment_method as String?),
      action_logs: (l$action_logs as List<dynamic>).map(
        (e) => Fragment$ClaimCases$action_logs.fromJson(
          (e as Map<String, dynamic>),
        ),
      ).toList(),
      admission_date: (l$admission_date as String?),
      claim_case_details: (l$claim_case_details as List<dynamic>).map(
        (e) => Fragment$ClaimCases$claim_case_details.fromJson(
          (e as Map<String, dynamic>),
        ),
      ).toList(),
      discharge_date: (l$discharge_date as String?),
      physical_examination_date: (l$physical_examination_date as String?),
      claim_pending_codes: (l$claim_pending_codes as List<dynamic>).map(
        (e) => Fragment$ClaimPendingCodes.fromJson((e as Map<String, dynamic>)),
      ).toList(),
      claim_documents: (l$claim_documents as List<dynamic>).map(
        (e) => Fragment$ClaimDocuments.fromJson((e as Map<String, dynamic>)),
      ).toList(),
      assessment_summary: (l$assessment_summary as List<dynamic>).map(
        (e) => Fragment$ClaimCases$assessment_summary.fromJson(
          (e as Map<String, dynamic>),
        ),
      ).toList(),
      created_by_user: l$created_by_user == null
          ? null
          : Fragment$ClaimCases$created_by_user.fromJson(
              (l$created_by_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$ClaimCases$original_claim_case? original_claim_case;

  final Enum$insured_benefit_types_enum benefit_type;

  final Fragment$ClaimCases$insured_benefit_type insured_benefit_type;

  final String? medical_provider_name;

  final String? diagnosis;

  final Fragment$ClaimCases$claim_case_status claim_case_status;

  final String created_at;

  final bool is_direct_billing;

  final Fragment$ClaimCases$insured_person insured_person;

  final String? event_dates;

  final double? request_amount;

  final String? payment_bank_name;

  final String? payment_bank_city;

  final String? payment_bank_branch;

  final String? payment_account_number;

  final String? payment_account_name;

  final String? medical_provider_phones;

  final Enum$claim_case_statuses_enum status;

  final String code;

  final String? event_date;

  final List<Fragment$ClaimCases$claim_case_input_diagnoses>
  claim_case_input_diagnoses;

  final String? diseases;

  final String? treatment_method;

  final List<Fragment$ClaimCases$action_logs> action_logs;

  final String? admission_date;

  final List<Fragment$ClaimCases$claim_case_details> claim_case_details;

  final String? discharge_date;

  final String? physical_examination_date;

  final List<Fragment$ClaimPendingCodes> claim_pending_codes;

  final List<Fragment$ClaimDocuments> claim_documents;

  final List<Fragment$ClaimCases$assessment_summary> assessment_summary;

  final Fragment$ClaimCases$created_by_user? created_by_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$original_claim_case = original_claim_case;
    _resultData['original_claim_case'] = l$original_claim_case?.toJson();
    final l$benefit_type = benefit_type;
    _resultData['benefit_type'] = toJson$Enum$insured_benefit_types_enum(
      l$benefit_type,
    );
    final l$insured_benefit_type = insured_benefit_type;
    _resultData['insured_benefit_type'] = l$insured_benefit_type.toJson();
    final l$medical_provider_name = medical_provider_name;
    _resultData['medical_provider_name'] = l$medical_provider_name;
    final l$diagnosis = diagnosis;
    _resultData['diagnosis'] = l$diagnosis;
    final l$claim_case_status = claim_case_status;
    _resultData['claim_case_status'] = l$claim_case_status.toJson();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$is_direct_billing = is_direct_billing;
    _resultData['is_direct_billing'] = l$is_direct_billing;
    final l$insured_person = insured_person;
    _resultData['insured_person'] = l$insured_person.toJson();
    final l$event_dates = event_dates;
    _resultData['event_dates'] = l$event_dates;
    final l$request_amount = request_amount;
    _resultData['request_amount'] = l$request_amount;
    final l$payment_bank_name = payment_bank_name;
    _resultData['payment_bank_name'] = l$payment_bank_name;
    final l$payment_bank_city = payment_bank_city;
    _resultData['payment_bank_city'] = l$payment_bank_city;
    final l$payment_bank_branch = payment_bank_branch;
    _resultData['payment_bank_branch'] = l$payment_bank_branch;
    final l$payment_account_number = payment_account_number;
    _resultData['payment_account_number'] = l$payment_account_number;
    final l$payment_account_name = payment_account_name;
    _resultData['payment_account_name'] = l$payment_account_name;
    final l$medical_provider_phones = medical_provider_phones;
    _resultData['medical_provider_phones'] = l$medical_provider_phones;
    final l$status = status;
    _resultData['status'] = toJson$Enum$claim_case_statuses_enum(l$status);
    final l$code = code;
    _resultData['code'] = l$code;
    final l$event_date = event_date;
    _resultData['event_date'] = l$event_date;
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    _resultData['claim_case_input_diagnoses'] =
        l$claim_case_input_diagnoses.map((e) => e.toJson()).toList();
    final l$diseases = diseases;
    _resultData['diseases'] = l$diseases;
    final l$treatment_method = treatment_method;
    _resultData['treatment_method'] = l$treatment_method;
    final l$action_logs = action_logs;
    _resultData['action_logs'] = l$action_logs.map((e) => e.toJson()).toList();
    final l$admission_date = admission_date;
    _resultData['admission_date'] = l$admission_date;
    final l$claim_case_details = claim_case_details;
    _resultData['claim_case_details'] =
        l$claim_case_details.map((e) => e.toJson()).toList();
    final l$discharge_date = discharge_date;
    _resultData['discharge_date'] = l$discharge_date;
    final l$physical_examination_date = physical_examination_date;
    _resultData['physical_examination_date'] = l$physical_examination_date;
    final l$claim_pending_codes = claim_pending_codes;
    _resultData['claim_pending_codes'] =
        l$claim_pending_codes.map((e) => e.toJson()).toList();
    final l$claim_documents = claim_documents;
    _resultData['claim_documents'] =
        l$claim_documents.map((e) => e.toJson()).toList();
    final l$assessment_summary = assessment_summary;
    _resultData['assessment_summary'] =
        l$assessment_summary.map((e) => e.toJson()).toList();
    final l$created_by_user = created_by_user;
    _resultData['created_by_user'] = l$created_by_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$original_claim_case = original_claim_case;
    final l$benefit_type = benefit_type;
    final l$insured_benefit_type = insured_benefit_type;
    final l$medical_provider_name = medical_provider_name;
    final l$diagnosis = diagnosis;
    final l$claim_case_status = claim_case_status;
    final l$created_at = created_at;
    final l$is_direct_billing = is_direct_billing;
    final l$insured_person = insured_person;
    final l$event_dates = event_dates;
    final l$request_amount = request_amount;
    final l$payment_bank_name = payment_bank_name;
    final l$payment_bank_city = payment_bank_city;
    final l$payment_bank_branch = payment_bank_branch;
    final l$payment_account_number = payment_account_number;
    final l$payment_account_name = payment_account_name;
    final l$medical_provider_phones = medical_provider_phones;
    final l$status = status;
    final l$code = code;
    final l$event_date = event_date;
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    final l$diseases = diseases;
    final l$treatment_method = treatment_method;
    final l$action_logs = action_logs;
    final l$admission_date = admission_date;
    final l$claim_case_details = claim_case_details;
    final l$discharge_date = discharge_date;
    final l$physical_examination_date = physical_examination_date;
    final l$claim_pending_codes = claim_pending_codes;
    final l$claim_documents = claim_documents;
    final l$assessment_summary = assessment_summary;
    final l$created_by_user = created_by_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$original_claim_case,
      l$benefit_type,
      l$insured_benefit_type,
      l$medical_provider_name,
      l$diagnosis,
      l$claim_case_status,
      l$created_at,
      l$is_direct_billing,
      l$insured_person,
      l$event_dates,
      l$request_amount,
      l$payment_bank_name,
      l$payment_bank_city,
      l$payment_bank_branch,
      l$payment_account_number,
      l$payment_account_name,
      l$medical_provider_phones,
      l$status,
      l$code,
      l$event_date,
      Object.hashAll(l$claim_case_input_diagnoses.map((v) => v)),
      l$diseases,
      l$treatment_method,
      Object.hashAll(l$action_logs.map((v) => v)),
      l$admission_date,
      Object.hashAll(l$claim_case_details.map((v) => v)),
      l$discharge_date,
      l$physical_examination_date,
      Object.hashAll(l$claim_pending_codes.map((v) => v)),
      Object.hashAll(l$claim_documents.map((v) => v)),
      Object.hashAll(l$assessment_summary.map((v) => v)),
      l$created_by_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$original_claim_case = original_claim_case;
    final lOther$original_claim_case = other.original_claim_case;
    if (l$original_claim_case != lOther$original_claim_case) {
      return false;
    }
    final l$benefit_type = benefit_type;
    final lOther$benefit_type = other.benefit_type;
    if (l$benefit_type != lOther$benefit_type) {
      return false;
    }
    final l$insured_benefit_type = insured_benefit_type;
    final lOther$insured_benefit_type = other.insured_benefit_type;
    if (l$insured_benefit_type != lOther$insured_benefit_type) {
      return false;
    }
    final l$medical_provider_name = medical_provider_name;
    final lOther$medical_provider_name = other.medical_provider_name;
    if (l$medical_provider_name != lOther$medical_provider_name) {
      return false;
    }
    final l$diagnosis = diagnosis;
    final lOther$diagnosis = other.diagnosis;
    if (l$diagnosis != lOther$diagnosis) {
      return false;
    }
    final l$claim_case_status = claim_case_status;
    final lOther$claim_case_status = other.claim_case_status;
    if (l$claim_case_status != lOther$claim_case_status) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$is_direct_billing = is_direct_billing;
    final lOther$is_direct_billing = other.is_direct_billing;
    if (l$is_direct_billing != lOther$is_direct_billing) {
      return false;
    }
    final l$insured_person = insured_person;
    final lOther$insured_person = other.insured_person;
    if (l$insured_person != lOther$insured_person) {
      return false;
    }
    final l$event_dates = event_dates;
    final lOther$event_dates = other.event_dates;
    if (l$event_dates != lOther$event_dates) {
      return false;
    }
    final l$request_amount = request_amount;
    final lOther$request_amount = other.request_amount;
    if (l$request_amount != lOther$request_amount) {
      return false;
    }
    final l$payment_bank_name = payment_bank_name;
    final lOther$payment_bank_name = other.payment_bank_name;
    if (l$payment_bank_name != lOther$payment_bank_name) {
      return false;
    }
    final l$payment_bank_city = payment_bank_city;
    final lOther$payment_bank_city = other.payment_bank_city;
    if (l$payment_bank_city != lOther$payment_bank_city) {
      return false;
    }
    final l$payment_bank_branch = payment_bank_branch;
    final lOther$payment_bank_branch = other.payment_bank_branch;
    if (l$payment_bank_branch != lOther$payment_bank_branch) {
      return false;
    }
    final l$payment_account_number = payment_account_number;
    final lOther$payment_account_number = other.payment_account_number;
    if (l$payment_account_number != lOther$payment_account_number) {
      return false;
    }
    final l$payment_account_name = payment_account_name;
    final lOther$payment_account_name = other.payment_account_name;
    if (l$payment_account_name != lOther$payment_account_name) {
      return false;
    }
    final l$medical_provider_phones = medical_provider_phones;
    final lOther$medical_provider_phones = other.medical_provider_phones;
    if (l$medical_provider_phones != lOther$medical_provider_phones) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$event_date = event_date;
    final lOther$event_date = other.event_date;
    if (l$event_date != lOther$event_date) {
      return false;
    }
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    final lOther$claim_case_input_diagnoses = other.claim_case_input_diagnoses;
    if (l$claim_case_input_diagnoses.length !=
        lOther$claim_case_input_diagnoses.length) {
      return false;
    }
    for (int i = 0; i < l$claim_case_input_diagnoses.length; i++) {
      final l$claim_case_input_diagnoses$entry =
          l$claim_case_input_diagnoses[i];
      final lOther$claim_case_input_diagnoses$entry =
          lOther$claim_case_input_diagnoses[i];
      if (l$claim_case_input_diagnoses$entry !=
          lOther$claim_case_input_diagnoses$entry) {
        return false;
      }
    }
    final l$diseases = diseases;
    final lOther$diseases = other.diseases;
    if (l$diseases != lOther$diseases) {
      return false;
    }
    final l$treatment_method = treatment_method;
    final lOther$treatment_method = other.treatment_method;
    if (l$treatment_method != lOther$treatment_method) {
      return false;
    }
    final l$action_logs = action_logs;
    final lOther$action_logs = other.action_logs;
    if (l$action_logs.length != lOther$action_logs.length) {
      return false;
    }
    for (int i = 0; i < l$action_logs.length; i++) {
      final l$action_logs$entry = l$action_logs[i];
      final lOther$action_logs$entry = lOther$action_logs[i];
      if (l$action_logs$entry != lOther$action_logs$entry) {
        return false;
      }
    }
    final l$admission_date = admission_date;
    final lOther$admission_date = other.admission_date;
    if (l$admission_date != lOther$admission_date) {
      return false;
    }
    final l$claim_case_details = claim_case_details;
    final lOther$claim_case_details = other.claim_case_details;
    if (l$claim_case_details.length != lOther$claim_case_details.length) {
      return false;
    }
    for (int i = 0; i < l$claim_case_details.length; i++) {
      final l$claim_case_details$entry = l$claim_case_details[i];
      final lOther$claim_case_details$entry = lOther$claim_case_details[i];
      if (l$claim_case_details$entry != lOther$claim_case_details$entry) {
        return false;
      }
    }
    final l$discharge_date = discharge_date;
    final lOther$discharge_date = other.discharge_date;
    if (l$discharge_date != lOther$discharge_date) {
      return false;
    }
    final l$physical_examination_date = physical_examination_date;
    final lOther$physical_examination_date = other.physical_examination_date;
    if (l$physical_examination_date != lOther$physical_examination_date) {
      return false;
    }
    final l$claim_pending_codes = claim_pending_codes;
    final lOther$claim_pending_codes = other.claim_pending_codes;
    if (l$claim_pending_codes.length != lOther$claim_pending_codes.length) {
      return false;
    }
    for (int i = 0; i < l$claim_pending_codes.length; i++) {
      final l$claim_pending_codes$entry = l$claim_pending_codes[i];
      final lOther$claim_pending_codes$entry = lOther$claim_pending_codes[i];
      if (l$claim_pending_codes$entry != lOther$claim_pending_codes$entry) {
        return false;
      }
    }
    final l$claim_documents = claim_documents;
    final lOther$claim_documents = other.claim_documents;
    if (l$claim_documents.length != lOther$claim_documents.length) {
      return false;
    }
    for (int i = 0; i < l$claim_documents.length; i++) {
      final l$claim_documents$entry = l$claim_documents[i];
      final lOther$claim_documents$entry = lOther$claim_documents[i];
      if (l$claim_documents$entry != lOther$claim_documents$entry) {
        return false;
      }
    }
    final l$assessment_summary = assessment_summary;
    final lOther$assessment_summary = other.assessment_summary;
    if (l$assessment_summary.length != lOther$assessment_summary.length) {
      return false;
    }
    for (int i = 0; i < l$assessment_summary.length; i++) {
      final l$assessment_summary$entry = l$assessment_summary[i];
      final lOther$assessment_summary$entry = lOther$assessment_summary[i];
      if (l$assessment_summary$entry != lOther$assessment_summary$entry) {
        return false;
      }
    }
    final l$created_by_user = created_by_user;
    final lOther$created_by_user = other.created_by_user;
    if (l$created_by_user != lOther$created_by_user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases on Fragment$ClaimCases {
  CopyWith$Fragment$ClaimCases<Fragment$ClaimCases>
  get copyWith => CopyWith$Fragment$ClaimCases(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimCases<TRes> {
  factory CopyWith$Fragment$ClaimCases(
    Fragment$ClaimCases instance,
    TRes Function(Fragment$ClaimCases) then,
  ) = _CopyWithImpl$Fragment$ClaimCases;

  factory CopyWith$Fragment$ClaimCases.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases;

  TRes call({
    String? id,
    Fragment$ClaimCases$original_claim_case? original_claim_case,
    Enum$insured_benefit_types_enum? benefit_type,
    Fragment$ClaimCases$insured_benefit_type? insured_benefit_type,
    String? medical_provider_name,
    String? diagnosis,
    Fragment$ClaimCases$claim_case_status? claim_case_status,
    String? created_at,
    bool? is_direct_billing,
    Fragment$ClaimCases$insured_person? insured_person,
    String? event_dates,
    double? request_amount,
    String? payment_bank_name,
    String? payment_bank_city,
    String? payment_bank_branch,
    String? payment_account_number,
    String? payment_account_name,
    String? medical_provider_phones,
    Enum$claim_case_statuses_enum? status,
    String? code,
    String? event_date,
    List<Fragment$ClaimCases$claim_case_input_diagnoses>?
    claim_case_input_diagnoses,
    String? diseases,
    String? treatment_method,
    List<Fragment$ClaimCases$action_logs>? action_logs,
    String? admission_date,
    List<Fragment$ClaimCases$claim_case_details>? claim_case_details,
    String? discharge_date,
    String? physical_examination_date,
    List<Fragment$ClaimPendingCodes>? claim_pending_codes,
    List<Fragment$ClaimDocuments>? claim_documents,
    List<Fragment$ClaimCases$assessment_summary>? assessment_summary,
    Fragment$ClaimCases$created_by_user? created_by_user,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$original_claim_case<TRes>
  get original_claim_case;
  CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes>
  get insured_benefit_type;
  CopyWith$Fragment$ClaimCases$claim_case_status<TRes> get claim_case_status;
  CopyWith$Fragment$ClaimCases$insured_person<TRes> get insured_person;
  TRes claim_case_input_diagnoses(
    Iterable<Fragment$ClaimCases$claim_case_input_diagnoses> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<
          Fragment$ClaimCases$claim_case_input_diagnoses
        >
      >,
    )
    _fn,
  );
  TRes action_logs(
    Iterable<Fragment$ClaimCases$action_logs> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$action_logs<
          Fragment$ClaimCases$action_logs
        >
      >,
    )
    _fn,
  );
  TRes claim_case_details(
    Iterable<Fragment$ClaimCases$claim_case_details> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_details<
          Fragment$ClaimCases$claim_case_details
        >
      >,
    )
    _fn,
  );
  TRes claim_pending_codes(
    Iterable<Fragment$ClaimPendingCodes> Function(
      Iterable<CopyWith$Fragment$ClaimPendingCodes<Fragment$ClaimPendingCodes>>,
    )
    _fn,
  );
  TRes claim_documents(
    Iterable<Fragment$ClaimDocuments> Function(
      Iterable<CopyWith$Fragment$ClaimDocuments<Fragment$ClaimDocuments>>,
    )
    _fn,
  );
  TRes assessment_summary(
    Iterable<Fragment$ClaimCases$assessment_summary> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$assessment_summary<
          Fragment$ClaimCases$assessment_summary
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$ClaimCases$created_by_user<TRes> get created_by_user;
}

class _CopyWithImpl$Fragment$ClaimCases<TRes>
    implements CopyWith$Fragment$ClaimCases<TRes> {
  _CopyWithImpl$Fragment$ClaimCases(this._instance, this._then);

  final Fragment$ClaimCases _instance;

  final TRes Function(Fragment$ClaimCases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? original_claim_case = _undefined,
    Object? benefit_type = _undefined,
    Object? insured_benefit_type = _undefined,
    Object? medical_provider_name = _undefined,
    Object? diagnosis = _undefined,
    Object? claim_case_status = _undefined,
    Object? created_at = _undefined,
    Object? is_direct_billing = _undefined,
    Object? insured_person = _undefined,
    Object? event_dates = _undefined,
    Object? request_amount = _undefined,
    Object? payment_bank_name = _undefined,
    Object? payment_bank_city = _undefined,
    Object? payment_bank_branch = _undefined,
    Object? payment_account_number = _undefined,
    Object? payment_account_name = _undefined,
    Object? medical_provider_phones = _undefined,
    Object? status = _undefined,
    Object? code = _undefined,
    Object? event_date = _undefined,
    Object? claim_case_input_diagnoses = _undefined,
    Object? diseases = _undefined,
    Object? treatment_method = _undefined,
    Object? action_logs = _undefined,
    Object? admission_date = _undefined,
    Object? claim_case_details = _undefined,
    Object? discharge_date = _undefined,
    Object? physical_examination_date = _undefined,
    Object? claim_pending_codes = _undefined,
    Object? claim_documents = _undefined,
    Object? assessment_summary = _undefined,
    Object? created_by_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    original_claim_case: original_claim_case == _undefined
        ? _instance.original_claim_case
        : (original_claim_case as Fragment$ClaimCases$original_claim_case?),
    benefit_type: benefit_type == _undefined || benefit_type == null
        ? _instance.benefit_type
        : (benefit_type as Enum$insured_benefit_types_enum),
    insured_benefit_type: insured_benefit_type == _undefined ||
            insured_benefit_type == null
        ? _instance.insured_benefit_type
        : (insured_benefit_type as Fragment$ClaimCases$insured_benefit_type),
    medical_provider_name: medical_provider_name == _undefined
        ? _instance.medical_provider_name
        : (medical_provider_name as String?),
    diagnosis: diagnosis == _undefined
        ? _instance.diagnosis
        : (diagnosis as String?),
    claim_case_status:
        claim_case_status == _undefined || claim_case_status == null
            ? _instance.claim_case_status
            : (claim_case_status as Fragment$ClaimCases$claim_case_status),
    created_at: created_at == _undefined || created_at == null
        ? _instance.created_at
        : (created_at as String),
    is_direct_billing:
        is_direct_billing == _undefined || is_direct_billing == null
            ? _instance.is_direct_billing
            : (is_direct_billing as bool),
    insured_person: insured_person == _undefined || insured_person == null
        ? _instance.insured_person
        : (insured_person as Fragment$ClaimCases$insured_person),
    event_dates: event_dates == _undefined
        ? _instance.event_dates
        : (event_dates as String?),
    request_amount: request_amount == _undefined
        ? _instance.request_amount
        : (request_amount as double?),
    payment_bank_name: payment_bank_name == _undefined
        ? _instance.payment_bank_name
        : (payment_bank_name as String?),
    payment_bank_city: payment_bank_city == _undefined
        ? _instance.payment_bank_city
        : (payment_bank_city as String?),
    payment_bank_branch: payment_bank_branch == _undefined
        ? _instance.payment_bank_branch
        : (payment_bank_branch as String?),
    payment_account_number: payment_account_number == _undefined
        ? _instance.payment_account_number
        : (payment_account_number as String?),
    payment_account_name: payment_account_name == _undefined
        ? _instance.payment_account_name
        : (payment_account_name as String?),
    medical_provider_phones: medical_provider_phones == _undefined
        ? _instance.medical_provider_phones
        : (medical_provider_phones as String?),
    status: status == _undefined || status == null
        ? _instance.status
        : (status as Enum$claim_case_statuses_enum),
    code: code == _undefined || code == null
        ? _instance.code
        : (code as String),
    event_date: event_date == _undefined
        ? _instance.event_date
        : (event_date as String?),
    claim_case_input_diagnoses: claim_case_input_diagnoses == _undefined ||
            claim_case_input_diagnoses == null
        ? _instance.claim_case_input_diagnoses
        : (claim_case_input_diagnoses
              as List<Fragment$ClaimCases$claim_case_input_diagnoses>),
    diseases: diseases == _undefined
        ? _instance.diseases
        : (diseases as String?),
    treatment_method: treatment_method == _undefined
        ? _instance.treatment_method
        : (treatment_method as String?),
    action_logs: action_logs == _undefined || action_logs == null
        ? _instance.action_logs
        : (action_logs as List<Fragment$ClaimCases$action_logs>),
    admission_date: admission_date == _undefined
        ? _instance.admission_date
        : (admission_date as String?),
    claim_case_details: claim_case_details == _undefined ||
            claim_case_details == null
        ? _instance.claim_case_details
        : (claim_case_details as List<Fragment$ClaimCases$claim_case_details>),
    discharge_date: discharge_date == _undefined
        ? _instance.discharge_date
        : (discharge_date as String?),
    physical_examination_date: physical_examination_date == _undefined
        ? _instance.physical_examination_date
        : (physical_examination_date as String?),
    claim_pending_codes:
        claim_pending_codes == _undefined || claim_pending_codes == null
            ? _instance.claim_pending_codes
            : (claim_pending_codes as List<Fragment$ClaimPendingCodes>),
    claim_documents: claim_documents == _undefined || claim_documents == null
        ? _instance.claim_documents
        : (claim_documents as List<Fragment$ClaimDocuments>),
    assessment_summary: assessment_summary == _undefined ||
            assessment_summary == null
        ? _instance.assessment_summary
        : (assessment_summary as List<Fragment$ClaimCases$assessment_summary>),
    created_by_user: created_by_user == _undefined
        ? _instance.created_by_user
        : (created_by_user as Fragment$ClaimCases$created_by_user?),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$original_claim_case<TRes>
  get original_claim_case {
    final local$original_claim_case = _instance.original_claim_case;
    return local$original_claim_case == null
        ? CopyWith$Fragment$ClaimCases$original_claim_case.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$ClaimCases$original_claim_case(
            local$original_claim_case,
            (e) => call(original_claim_case: e),
          );
  }

  CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes>
  get insured_benefit_type {
    final local$insured_benefit_type = _instance.insured_benefit_type;
    return CopyWith$Fragment$ClaimCases$insured_benefit_type(
      local$insured_benefit_type,
      (e) => call(insured_benefit_type: e),
    );
  }

  CopyWith$Fragment$ClaimCases$claim_case_status<TRes> get claim_case_status {
    final local$claim_case_status = _instance.claim_case_status;
    return CopyWith$Fragment$ClaimCases$claim_case_status(
      local$claim_case_status,
      (e) => call(claim_case_status: e),
    );
  }

  CopyWith$Fragment$ClaimCases$insured_person<TRes> get insured_person {
    final local$insured_person = _instance.insured_person;
    return CopyWith$Fragment$ClaimCases$insured_person(
      local$insured_person,
      (e) => call(insured_person: e),
    );
  }

  TRes claim_case_input_diagnoses(
    Iterable<Fragment$ClaimCases$claim_case_input_diagnoses> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<
          Fragment$ClaimCases$claim_case_input_diagnoses
        >
      >,
    )
    _fn,
  ) => call(
    claim_case_input_diagnoses: _fn(_instance.claim_case_input_diagnoses.map(
      (e) => CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses(
        e,
        (i) => i,
      ),
    )).toList(),
  );
  TRes action_logs(
    Iterable<Fragment$ClaimCases$action_logs> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$action_logs<
          Fragment$ClaimCases$action_logs
        >
      >,
    )
    _fn,
  ) => call(
    action_logs: _fn(_instance.action_logs.map(
      (e) => CopyWith$Fragment$ClaimCases$action_logs(e, (i) => i),
    )).toList(),
  );
  TRes claim_case_details(
    Iterable<Fragment$ClaimCases$claim_case_details> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_details<
          Fragment$ClaimCases$claim_case_details
        >
      >,
    )
    _fn,
  ) => call(
    claim_case_details: _fn(_instance.claim_case_details.map(
      (e) => CopyWith$Fragment$ClaimCases$claim_case_details(e, (i) => i),
    )).toList(),
  );
  TRes claim_pending_codes(
    Iterable<Fragment$ClaimPendingCodes> Function(
      Iterable<CopyWith$Fragment$ClaimPendingCodes<Fragment$ClaimPendingCodes>>,
    )
    _fn,
  ) => call(
    claim_pending_codes: _fn(_instance.claim_pending_codes.map(
      (e) => CopyWith$Fragment$ClaimPendingCodes(e, (i) => i),
    )).toList(),
  );
  TRes claim_documents(
    Iterable<Fragment$ClaimDocuments> Function(
      Iterable<CopyWith$Fragment$ClaimDocuments<Fragment$ClaimDocuments>>,
    )
    _fn,
  ) => call(
    claim_documents: _fn(_instance.claim_documents.map(
      (e) => CopyWith$Fragment$ClaimDocuments(e, (i) => i),
    )).toList(),
  );
  TRes assessment_summary(
    Iterable<Fragment$ClaimCases$assessment_summary> Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$assessment_summary<
          Fragment$ClaimCases$assessment_summary
        >
      >,
    )
    _fn,
  ) => call(
    assessment_summary: _fn(_instance.assessment_summary.map(
      (e) => CopyWith$Fragment$ClaimCases$assessment_summary(e, (i) => i),
    )).toList(),
  );
  CopyWith$Fragment$ClaimCases$created_by_user<TRes> get created_by_user {
    final local$created_by_user = _instance.created_by_user;
    return local$created_by_user == null
        ? CopyWith$Fragment$ClaimCases$created_by_user.stub(_then(_instance))
        : CopyWith$Fragment$ClaimCases$created_by_user(
            local$created_by_user,
            (e) => call(created_by_user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases<TRes>
    implements CopyWith$Fragment$ClaimCases<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$ClaimCases$original_claim_case? original_claim_case,
    Enum$insured_benefit_types_enum? benefit_type,
    Fragment$ClaimCases$insured_benefit_type? insured_benefit_type,
    String? medical_provider_name,
    String? diagnosis,
    Fragment$ClaimCases$claim_case_status? claim_case_status,
    String? created_at,
    bool? is_direct_billing,
    Fragment$ClaimCases$insured_person? insured_person,
    String? event_dates,
    double? request_amount,
    String? payment_bank_name,
    String? payment_bank_city,
    String? payment_bank_branch,
    String? payment_account_number,
    String? payment_account_name,
    String? medical_provider_phones,
    Enum$claim_case_statuses_enum? status,
    String? code,
    String? event_date,
    List<Fragment$ClaimCases$claim_case_input_diagnoses>?
    claim_case_input_diagnoses,
    String? diseases,
    String? treatment_method,
    List<Fragment$ClaimCases$action_logs>? action_logs,
    String? admission_date,
    List<Fragment$ClaimCases$claim_case_details>? claim_case_details,
    String? discharge_date,
    String? physical_examination_date,
    List<Fragment$ClaimPendingCodes>? claim_pending_codes,
    List<Fragment$ClaimDocuments>? claim_documents,
    List<Fragment$ClaimCases$assessment_summary>? assessment_summary,
    Fragment$ClaimCases$created_by_user? created_by_user,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case<TRes>
  get original_claim_case => CopyWith$Fragment$ClaimCases$original_claim_case
      .stub(_res);
  CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes>
  get insured_benefit_type => CopyWith$Fragment$ClaimCases$insured_benefit_type
      .stub(_res);
  CopyWith$Fragment$ClaimCases$claim_case_status<TRes>
  get claim_case_status => CopyWith$Fragment$ClaimCases$claim_case_status.stub(
    _res,
  );
  CopyWith$Fragment$ClaimCases$insured_person<TRes>
  get insured_person => CopyWith$Fragment$ClaimCases$insured_person.stub(_res);
  claim_case_input_diagnoses(_fn) => _res;
  action_logs(_fn) => _res;
  claim_case_details(_fn) => _res;
  claim_pending_codes(_fn) => _res;
  claim_documents(_fn) => _res;
  assessment_summary(_fn) => _res;
  CopyWith$Fragment$ClaimCases$created_by_user<TRes>
  get created_by_user => CopyWith$Fragment$ClaimCases$created_by_user.stub(
    _res,
  );
}

const fragmentDefinitionClaimCases = FragmentDefinitionNode(
  name: NameNode(value: 'ClaimCases'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'claim_cases'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'claim_case_id'),
        alias: NameNode(value: 'id'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'original_claim_case'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'benefit_type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'insured_benefit_type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'comment'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'diagnosis'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'is_direct_billing'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'insured_person'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'insured_person_id'),
                    alias: NameNode(value: 'id'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'event_date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'requested_amount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'medical_provider_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'event_date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'admission_date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'discharge_date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'physical_examination_date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'claim_case_input_diagnoses'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'icd_metadata_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'icd'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'medical_provider'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'medical_provider_id'),
                    alias: NameNode(value: 'id'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'city_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'city'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'claim_case_beneficiary'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'payment_method'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'vn_name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'en_name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank_account_number'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank_branch'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank_city'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'beneficiary_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bank_branch'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paper_issue_date'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paper_issue_place'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paper_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'benefit_type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'insured_benefit_type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'comment'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'medical_provider_name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'diagnosis'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_case_status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'comment'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_direct_billing'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'insured_person'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'insured_person_id'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'event_dates'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'request_amount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payment_bank_name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payment_bank_city'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payment_bank_branch'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payment_account_number'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payment_account_name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'medical_provider_name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'medical_provider_phones'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'event_date'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_case_input_diagnoses'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'icd_metadata_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'icd'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'diseases'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'treatment_method'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'action_logs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'created_at'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'new_value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'old_value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'admission_date'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_case_details'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'claim_case_detail_id'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'total_paid_amount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'note'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'plan_insured_benefit'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'plan_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'plan_balance_benefits'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'plan_balance'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ],
                          ),
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: 'insured_benefit'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'code'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'insured_benefit_type'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'comment'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'value'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ],
                          ),
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'discharge_date'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'physical_examination_date'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claim_pending_codes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'status'),
                  value: ObjectValueNode(
                    fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_eq'),
                        value: EnumValueNode(name: NameNode(value: 'O')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ClaimPendingCodes'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'claim_documents'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'source'),
                  value: ObjectValueNode(
                    fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_nin'),
                        value: ListValueNode(
                          values: [
                            EnumValueNode(name: NameNode(value: 'Assessments')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ClaimDocuments'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'claim_notes'),
        alias: NameNode(value: 'assessment_summary'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'type'),
                  value: ObjectValueNode(
                    fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_eq'),
                        value: EnumValueNode(
                          name: NameNode(value: 'ASSESSMENT_SUMMARY'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ArgumentNode(
            name: NameNode(value: 'order_by'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'created_at'),
                  value: EnumValueNode(name: NameNode(value: 'desc')),
                ),
              ],
            ),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '1'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'created_by_user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'user_id'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentClaimCases = DocumentNode(
  definitions: [
    fragmentDefinitionClaimCases,
    fragmentDefinitionClaimPendingCodes,
    fragmentDefinitionClaimDocuments,
  ],
);

extension ClientExtension$Fragment$ClaimCases on graphql.GraphQLClient {
  void writeFragment$ClaimCases({
    required Fragment$ClaimCases data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(graphql.FragmentRequest(
    idFields: idFields,
    fragment: const graphql.Fragment(
      fragmentName: 'ClaimCases',
      document: documentNodeFragmentClaimCases,
    ),
  ), data: data.toJson(), broadcast: broadcast);
  Fragment$ClaimCases? readFragment$ClaimCases({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'ClaimCases',
        document: documentNodeFragmentClaimCases,
      ),
    ), optimistic: optimistic);
    return result == null ? null : Fragment$ClaimCases.fromJson(result);
  }
}

class Fragment$ClaimCases$original_claim_case {
  Fragment$ClaimCases$original_claim_case({
    required this.benefit_type,
    required this.insured_benefit_type,
    this.diagnosis,
    required this.created_at,
    required this.is_direct_billing,
    required this.insured_person,
    this.event_date,
    this.requested_amount,
    this.medical_provider_name,
    required this.code,
    this.admission_date,
    this.discharge_date,
    this.physical_examination_date,
    required this.claim_case_input_diagnoses,
    this.medical_provider,
    this.claim_case_beneficiary,
    this.$__typename = 'original_claim_cases',
  });

  factory Fragment$ClaimCases$original_claim_case.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$benefit_type = json['benefit_type'];
    final l$insured_benefit_type = json['insured_benefit_type'];
    final l$diagnosis = json['diagnosis'];
    final l$created_at = json['created_at'];
    final l$is_direct_billing = json['is_direct_billing'];
    final l$insured_person = json['insured_person'];
    final l$event_date = json['event_date'];
    final l$requested_amount = json['requested_amount'];
    final l$medical_provider_name = json['medical_provider_name'];
    final l$code = json['code'];
    final l$admission_date = json['admission_date'];
    final l$discharge_date = json['discharge_date'];
    final l$physical_examination_date = json['physical_examination_date'];
    final l$claim_case_input_diagnoses = json['claim_case_input_diagnoses'];
    final l$medical_provider = json['medical_provider'];
    final l$claim_case_beneficiary = json['claim_case_beneficiary'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case(
      benefit_type:
          fromJson$Enum$insured_benefit_types_enum((l$benefit_type as String)),
      insured_benefit_type:
          Fragment$ClaimCases$original_claim_case$insured_benefit_type.fromJson(
        (l$insured_benefit_type as Map<String, dynamic>),
      ),
      diagnosis: (l$diagnosis as String?),
      created_at: (l$created_at as String),
      is_direct_billing: (l$is_direct_billing as bool),
      insured_person:
          Fragment$ClaimCases$original_claim_case$insured_person.fromJson(
        (l$insured_person as Map<String, dynamic>),
      ),
      event_date: (l$event_date as String?),
      requested_amount: (l$requested_amount as num?)?.toDouble(),
      medical_provider_name: (l$medical_provider_name as String?),
      code: (l$code as String),
      admission_date: (l$admission_date as String?),
      discharge_date: (l$discharge_date as String?),
      physical_examination_date: (l$physical_examination_date as String?),
      claim_case_input_diagnoses:
          (l$claim_case_input_diagnoses as List<dynamic>).map(
            (
              e,
            ) => Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
                .fromJson((e as Map<String, dynamic>)),
          ).toList(),
      medical_provider: l$medical_provider == null
          ? null
          : Fragment$ClaimCases$original_claim_case$medical_provider.fromJson(
              (l$medical_provider as Map<String, dynamic>),
            ),
      claim_case_beneficiary: l$claim_case_beneficiary == null
          ? null
          : Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
                .fromJson((l$claim_case_beneficiary as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$insured_benefit_types_enum benefit_type;

  final Fragment$ClaimCases$original_claim_case$insured_benefit_type
  insured_benefit_type;

  final String? diagnosis;

  final String created_at;

  final bool is_direct_billing;

  final Fragment$ClaimCases$original_claim_case$insured_person insured_person;

  final String? event_date;

  final double? requested_amount;

  final String? medical_provider_name;

  final String code;

  final String? admission_date;

  final String? discharge_date;

  final String? physical_examination_date;

  final List<Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses>
  claim_case_input_diagnoses;

  final Fragment$ClaimCases$original_claim_case$medical_provider?
  medical_provider;

  final Fragment$ClaimCases$original_claim_case$claim_case_beneficiary?
  claim_case_beneficiary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$benefit_type = benefit_type;
    _resultData['benefit_type'] = toJson$Enum$insured_benefit_types_enum(
      l$benefit_type,
    );
    final l$insured_benefit_type = insured_benefit_type;
    _resultData['insured_benefit_type'] = l$insured_benefit_type.toJson();
    final l$diagnosis = diagnosis;
    _resultData['diagnosis'] = l$diagnosis;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$is_direct_billing = is_direct_billing;
    _resultData['is_direct_billing'] = l$is_direct_billing;
    final l$insured_person = insured_person;
    _resultData['insured_person'] = l$insured_person.toJson();
    final l$event_date = event_date;
    _resultData['event_date'] = l$event_date;
    final l$requested_amount = requested_amount;
    _resultData['requested_amount'] = l$requested_amount;
    final l$medical_provider_name = medical_provider_name;
    _resultData['medical_provider_name'] = l$medical_provider_name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$admission_date = admission_date;
    _resultData['admission_date'] = l$admission_date;
    final l$discharge_date = discharge_date;
    _resultData['discharge_date'] = l$discharge_date;
    final l$physical_examination_date = physical_examination_date;
    _resultData['physical_examination_date'] = l$physical_examination_date;
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    _resultData['claim_case_input_diagnoses'] =
        l$claim_case_input_diagnoses.map((e) => e.toJson()).toList();
    final l$medical_provider = medical_provider;
    _resultData['medical_provider'] = l$medical_provider?.toJson();
    final l$claim_case_beneficiary = claim_case_beneficiary;
    _resultData['claim_case_beneficiary'] = l$claim_case_beneficiary?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$benefit_type = benefit_type;
    final l$insured_benefit_type = insured_benefit_type;
    final l$diagnosis = diagnosis;
    final l$created_at = created_at;
    final l$is_direct_billing = is_direct_billing;
    final l$insured_person = insured_person;
    final l$event_date = event_date;
    final l$requested_amount = requested_amount;
    final l$medical_provider_name = medical_provider_name;
    final l$code = code;
    final l$admission_date = admission_date;
    final l$discharge_date = discharge_date;
    final l$physical_examination_date = physical_examination_date;
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    final l$medical_provider = medical_provider;
    final l$claim_case_beneficiary = claim_case_beneficiary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$benefit_type,
      l$insured_benefit_type,
      l$diagnosis,
      l$created_at,
      l$is_direct_billing,
      l$insured_person,
      l$event_date,
      l$requested_amount,
      l$medical_provider_name,
      l$code,
      l$admission_date,
      l$discharge_date,
      l$physical_examination_date,
      Object.hashAll(l$claim_case_input_diagnoses.map((v) => v)),
      l$medical_provider,
      l$claim_case_beneficiary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$original_claim_case) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$benefit_type = benefit_type;
    final lOther$benefit_type = other.benefit_type;
    if (l$benefit_type != lOther$benefit_type) {
      return false;
    }
    final l$insured_benefit_type = insured_benefit_type;
    final lOther$insured_benefit_type = other.insured_benefit_type;
    if (l$insured_benefit_type != lOther$insured_benefit_type) {
      return false;
    }
    final l$diagnosis = diagnosis;
    final lOther$diagnosis = other.diagnosis;
    if (l$diagnosis != lOther$diagnosis) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$is_direct_billing = is_direct_billing;
    final lOther$is_direct_billing = other.is_direct_billing;
    if (l$is_direct_billing != lOther$is_direct_billing) {
      return false;
    }
    final l$insured_person = insured_person;
    final lOther$insured_person = other.insured_person;
    if (l$insured_person != lOther$insured_person) {
      return false;
    }
    final l$event_date = event_date;
    final lOther$event_date = other.event_date;
    if (l$event_date != lOther$event_date) {
      return false;
    }
    final l$requested_amount = requested_amount;
    final lOther$requested_amount = other.requested_amount;
    if (l$requested_amount != lOther$requested_amount) {
      return false;
    }
    final l$medical_provider_name = medical_provider_name;
    final lOther$medical_provider_name = other.medical_provider_name;
    if (l$medical_provider_name != lOther$medical_provider_name) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$admission_date = admission_date;
    final lOther$admission_date = other.admission_date;
    if (l$admission_date != lOther$admission_date) {
      return false;
    }
    final l$discharge_date = discharge_date;
    final lOther$discharge_date = other.discharge_date;
    if (l$discharge_date != lOther$discharge_date) {
      return false;
    }
    final l$physical_examination_date = physical_examination_date;
    final lOther$physical_examination_date = other.physical_examination_date;
    if (l$physical_examination_date != lOther$physical_examination_date) {
      return false;
    }
    final l$claim_case_input_diagnoses = claim_case_input_diagnoses;
    final lOther$claim_case_input_diagnoses = other.claim_case_input_diagnoses;
    if (l$claim_case_input_diagnoses.length !=
        lOther$claim_case_input_diagnoses.length) {
      return false;
    }
    for (int i = 0; i < l$claim_case_input_diagnoses.length; i++) {
      final l$claim_case_input_diagnoses$entry =
          l$claim_case_input_diagnoses[i];
      final lOther$claim_case_input_diagnoses$entry =
          lOther$claim_case_input_diagnoses[i];
      if (l$claim_case_input_diagnoses$entry !=
          lOther$claim_case_input_diagnoses$entry) {
        return false;
      }
    }
    final l$medical_provider = medical_provider;
    final lOther$medical_provider = other.medical_provider;
    if (l$medical_provider != lOther$medical_provider) {
      return false;
    }
    final l$claim_case_beneficiary = claim_case_beneficiary;
    final lOther$claim_case_beneficiary = other.claim_case_beneficiary;
    if (l$claim_case_beneficiary != lOther$claim_case_beneficiary) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case
    on Fragment$ClaimCases$original_claim_case {
  CopyWith$Fragment$ClaimCases$original_claim_case<
    Fragment$ClaimCases$original_claim_case
  > get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case<TRes> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case(
    Fragment$ClaimCases$original_claim_case instance,
    TRes Function(Fragment$ClaimCases$original_claim_case) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case;

  factory CopyWith$Fragment$ClaimCases$original_claim_case.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case;

  TRes call({
    Enum$insured_benefit_types_enum? benefit_type,
    Fragment$ClaimCases$original_claim_case$insured_benefit_type?
    insured_benefit_type,
    String? diagnosis,
    String? created_at,
    bool? is_direct_billing,
    Fragment$ClaimCases$original_claim_case$insured_person? insured_person,
    String? event_date,
    double? requested_amount,
    String? medical_provider_name,
    String? code,
    String? admission_date,
    String? discharge_date,
    String? physical_examination_date,
    List<Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses>?
    claim_case_input_diagnoses,
    Fragment$ClaimCases$original_claim_case$medical_provider? medical_provider,
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary?
    claim_case_beneficiary,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<TRes>
  get insured_benefit_type;
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<TRes>
  get insured_person;
  TRes claim_case_input_diagnoses(
    Iterable<Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses>
    Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
          Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<TRes>
  get medical_provider;
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<TRes>
  get claim_case_beneficiary;
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case<TRes>
    implements CopyWith$Fragment$ClaimCases$original_claim_case<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case _instance;

  final TRes Function(Fragment$ClaimCases$original_claim_case) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? benefit_type = _undefined,
    Object? insured_benefit_type = _undefined,
    Object? diagnosis = _undefined,
    Object? created_at = _undefined,
    Object? is_direct_billing = _undefined,
    Object? insured_person = _undefined,
    Object? event_date = _undefined,
    Object? requested_amount = _undefined,
    Object? medical_provider_name = _undefined,
    Object? code = _undefined,
    Object? admission_date = _undefined,
    Object? discharge_date = _undefined,
    Object? physical_examination_date = _undefined,
    Object? claim_case_input_diagnoses = _undefined,
    Object? medical_provider = _undefined,
    Object? claim_case_beneficiary = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case(
    benefit_type: benefit_type == _undefined || benefit_type == null
        ? _instance.benefit_type
        : (benefit_type as Enum$insured_benefit_types_enum),
    insured_benefit_type: insured_benefit_type == _undefined ||
            insured_benefit_type == null
        ? _instance.insured_benefit_type
        : (insured_benefit_type
              as Fragment$ClaimCases$original_claim_case$insured_benefit_type),
    diagnosis: diagnosis == _undefined
        ? _instance.diagnosis
        : (diagnosis as String?),
    created_at: created_at == _undefined || created_at == null
        ? _instance.created_at
        : (created_at as String),
    is_direct_billing:
        is_direct_billing == _undefined || is_direct_billing == null
            ? _instance.is_direct_billing
            : (is_direct_billing as bool),
    insured_person: insured_person == _undefined || insured_person == null
        ? _instance.insured_person
        : (insured_person
              as Fragment$ClaimCases$original_claim_case$insured_person),
    event_date: event_date == _undefined
        ? _instance.event_date
        : (event_date as String?),
    requested_amount: requested_amount == _undefined
        ? _instance.requested_amount
        : (requested_amount as double?),
    medical_provider_name: medical_provider_name == _undefined
        ? _instance.medical_provider_name
        : (medical_provider_name as String?),
    code: code == _undefined || code == null
        ? _instance.code
        : (code as String),
    admission_date: admission_date == _undefined
        ? _instance.admission_date
        : (admission_date as String?),
    discharge_date: discharge_date == _undefined
        ? _instance.discharge_date
        : (discharge_date as String?),
    physical_examination_date: physical_examination_date == _undefined
        ? _instance.physical_examination_date
        : (physical_examination_date as String?),
    claim_case_input_diagnoses: claim_case_input_diagnoses == _undefined ||
            claim_case_input_diagnoses == null
        ? _instance.claim_case_input_diagnoses
        : (claim_case_input_diagnoses as List<
            Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
          >),
    medical_provider: medical_provider == _undefined
        ? _instance.medical_provider
        : (medical_provider
              as Fragment$ClaimCases$original_claim_case$medical_provider?),
    claim_case_beneficiary: claim_case_beneficiary == _undefined
        ? _instance.claim_case_beneficiary
        : (claim_case_beneficiary
              as Fragment$ClaimCases$original_claim_case$claim_case_beneficiary?),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<TRes>
  get insured_benefit_type {
    final local$insured_benefit_type = _instance.insured_benefit_type;
    return CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type(
      local$insured_benefit_type,
      (e) => call(insured_benefit_type: e),
    );
  }

  CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<TRes>
  get insured_person {
    final local$insured_person = _instance.insured_person;
    return CopyWith$Fragment$ClaimCases$original_claim_case$insured_person(
      local$insured_person,
      (e) => call(insured_person: e),
    );
  }

  TRes claim_case_input_diagnoses(
    Iterable<Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses>
    Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
          Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
        >
      >,
    )
    _fn,
  ) => call(
    claim_case_input_diagnoses: _fn(_instance.claim_case_input_diagnoses.map(
      (
        e,
      ) => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
        e,
        (i) => i,
      ),
    )).toList(),
  );
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<TRes>
  get medical_provider {
    final local$medical_provider = _instance.medical_provider;
    return local$medical_provider == null
        ? CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider
              .stub(_then(_instance))
        : CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider(
            local$medical_provider,
            (e) => call(medical_provider: e),
          );
  }

  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<TRes>
  get claim_case_beneficiary {
    final local$claim_case_beneficiary = _instance.claim_case_beneficiary;
    return local$claim_case_beneficiary == null
        ? CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
              .stub(_then(_instance))
        : CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
            local$claim_case_beneficiary,
            (e) => call(claim_case_beneficiary: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case<TRes>
    implements CopyWith$Fragment$ClaimCases$original_claim_case<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case(this._res);

  TRes _res;

  call({
    Enum$insured_benefit_types_enum? benefit_type,
    Fragment$ClaimCases$original_claim_case$insured_benefit_type?
    insured_benefit_type,
    String? diagnosis,
    String? created_at,
    bool? is_direct_billing,
    Fragment$ClaimCases$original_claim_case$insured_person? insured_person,
    String? event_date,
    double? requested_amount,
    String? medical_provider_name,
    String? code,
    String? admission_date,
    String? discharge_date,
    String? physical_examination_date,
    List<Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses>?
    claim_case_input_diagnoses,
    Fragment$ClaimCases$original_claim_case$medical_provider? medical_provider,
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary?
    claim_case_beneficiary,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<TRes>
  get insured_benefit_type => CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type
      .stub(_res);
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<TRes>
  get insured_person => CopyWith$Fragment$ClaimCases$original_claim_case$insured_person
      .stub(_res);
  claim_case_input_diagnoses(_fn) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<TRes>
  get medical_provider => CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider
      .stub(_res);
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<TRes>
  get claim_case_beneficiary => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
      .stub(_res);
}

class Fragment$ClaimCases$original_claim_case$insured_benefit_type {
  Fragment$ClaimCases$original_claim_case$insured_benefit_type({
    required this.comment,
    required this.value,
    this.$__typename = 'insured_benefit_types',
  });

  factory Fragment$ClaimCases$original_claim_case$insured_benefit_type.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$comment = json['comment'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$insured_benefit_type(
      comment: (l$comment as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String comment;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$comment = comment;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$comment, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$insured_benefit_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$insured_benefit_type
    on Fragment$ClaimCases$original_claim_case$insured_benefit_type {
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
    Fragment$ClaimCases$original_claim_case$insured_benefit_type
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type(
    Fragment$ClaimCases$original_claim_case$insured_benefit_type instance,
    TRes Function(Fragment$ClaimCases$original_claim_case$insured_benefit_type)
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type;

  TRes call({String? comment, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$insured_benefit_type _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$insured_benefit_type,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? comment = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case$insured_benefit_type(
    comment: comment == _undefined || comment == null
        ? _instance.comment
        : (comment as String),
    value: value == _undefined || value == null
        ? _instance.value
        : (value as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$insured_benefit_type<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_benefit_type(
    this._res,
  );

  TRes _res;

  call({String? comment, String? value, String? $__typename}) => _res;
}

class Fragment$ClaimCases$original_claim_case$insured_person {
  Fragment$ClaimCases$original_claim_case$insured_person({
    required this.id,
    required this.name,
    this.$__typename = 'insured_persons',
  });

  factory Fragment$ClaimCases$original_claim_case$insured_person.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$insured_person(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$original_claim_case$insured_person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$insured_person
    on Fragment$ClaimCases$original_claim_case$insured_person {
  CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<
    Fragment$ClaimCases$original_claim_case$insured_person
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$insured_person(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$insured_person(
    Fragment$ClaimCases$original_claim_case$insured_person instance,
    TRes Function(Fragment$ClaimCases$original_claim_case$insured_person) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_person;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$insured_person.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_person;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_person<TRes>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$insured_person(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$insured_person _instance;

  final TRes Function(Fragment$ClaimCases$original_claim_case$insured_person)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case$insured_person(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    name: name == _undefined || name == null
        ? _instance.name
        : (name as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_person<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$insured_person<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$insured_person(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses {
  Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses({
    required this.id,
    required this.icd_metadata_id,
    required this.icd,
    this.$__typename = 'claim_case_input_diagnoses',
  });

  factory Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$icd_metadata_id = json['icd_metadata_id'];
    final l$icd = json['icd'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
      id: (l$id as String),
      icd_metadata_id: (l$icd_metadata_id as String),
      icd:
          Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
              .fromJson((l$icd as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String icd_metadata_id;

  final Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
  icd;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$icd_metadata_id = icd_metadata_id;
    _resultData['icd_metadata_id'] = l$icd_metadata_id;
    final l$icd = icd;
    _resultData['icd'] = l$icd.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$icd_metadata_id = icd_metadata_id;
    final l$icd = icd;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$icd_metadata_id, l$icd, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$icd_metadata_id = icd_metadata_id;
    final lOther$icd_metadata_id = other.icd_metadata_id;
    if (l$icd_metadata_id != lOther$icd_metadata_id) {
      return false;
    }
    final l$icd = icd;
    final lOther$icd = other.icd;
    if (l$icd != lOther$icd) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
    on Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses {
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses instance,
    TRes Function(
      Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses;

  TRes call({
    String? id,
    String? icd_metadata_id,
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd? icd,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
    TRes
  > get icd;
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses
  _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? icd_metadata_id = _undefined,
    Object? icd = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      icd_metadata_id: icd_metadata_id == _undefined || icd_metadata_id == null
          ? _instance.icd_metadata_id
          : (icd_metadata_id as String),
      icd: icd == _undefined || icd == null
          ? _instance.icd
          : (icd
                as Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
    TRes
  > get icd {
    final local$icd = _instance.icd;
    return CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
      local$icd,
      (e) => call(icd: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? icd_metadata_id,
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd? icd,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
    TRes
  >
  get icd => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
      .stub(_res);
}

class Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd {
  Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd({
    required this.title,
    required this.value,
    this.$__typename = 'metadata',
  });

  factory Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$title = json['title'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
      title: (l$title as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
    on Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd {
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
    instance,
    TRes Function(
      Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd;

  TRes call({String? title, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd
  _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_input_diagnoses$icd(
    this._res,
  );

  TRes _res;

  call({String? title, String? value, String? $__typename}) => _res;
}

class Fragment$ClaimCases$original_claim_case$medical_provider {
  Fragment$ClaimCases$original_claim_case$medical_provider({
    required this.id,
    this.city_id,
    this.city,
    this.$__typename = 'mp_medical_providers',
  });

  factory Fragment$ClaimCases$original_claim_case$medical_provider.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$city_id = json['city_id'];
    final l$city = json['city'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$medical_provider(
      id: (l$id as String),
      city_id: (l$city_id as int?),
      city: l$city == null
          ? null
          : Fragment$ClaimCases$original_claim_case$medical_provider$city
                .fromJson((l$city as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int? city_id;

  final Fragment$ClaimCases$original_claim_case$medical_provider$city? city;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$city = city;
    _resultData['city'] = l$city?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$city_id = city_id;
    final l$city = city;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$city_id, l$city, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$original_claim_case$medical_provider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$medical_provider
    on Fragment$ClaimCases$original_claim_case$medical_provider {
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<
    Fragment$ClaimCases$original_claim_case$medical_provider
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider(
    Fragment$ClaimCases$original_claim_case$medical_provider instance,
    TRes Function(Fragment$ClaimCases$original_claim_case$medical_provider)
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider;

  TRes call({
    String? id,
    int? city_id,
    Fragment$ClaimCases$original_claim_case$medical_provider$city? city,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<TRes>
  get city;
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$medical_provider _instance;

  final TRes Function(Fragment$ClaimCases$original_claim_case$medical_provider)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? city_id = _undefined,
    Object? city = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case$medical_provider(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    city_id: city_id == _undefined ? _instance.city_id : (city_id as int?),
    city: city == _undefined
        ? _instance.city
        : (city
              as Fragment$ClaimCases$original_claim_case$medical_provider$city?),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<TRes>
  get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city
              .stub(_then(_instance))
        : CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city(
            local$city,
            (e) => call(city: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    int? city_id,
    Fragment$ClaimCases$original_claim_case$medical_provider$city? city,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<TRes>
  get city => CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city
      .stub(_res);
}

class Fragment$ClaimCases$original_claim_case$medical_provider$city {
  Fragment$ClaimCases$original_claim_case$medical_provider$city({
    required this.name,
    this.$__typename = 'cities',
  });

  factory Fragment$ClaimCases$original_claim_case$medical_provider$city.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$medical_provider$city(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$medical_provider$city) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$medical_provider$city
    on Fragment$ClaimCases$original_claim_case$medical_provider$city {
  CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<
    Fragment$ClaimCases$original_claim_case$medical_provider$city
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city(
    Fragment$ClaimCases$original_claim_case$medical_provider$city instance,
    TRes Function(Fragment$ClaimCases$original_claim_case$medical_provider$city)
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$medical_provider$city _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$medical_provider$city,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case$medical_provider$city(
    name: name == _undefined || name == null
        ? _instance.name
        : (name as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$medical_provider$city<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$medical_provider$city(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Fragment$ClaimCases$original_claim_case$claim_case_beneficiary {
  Fragment$ClaimCases$original_claim_case$claim_case_beneficiary({
    required this.id,
    required this.payment_method,
    this.bank,
    this.bank_account_number,
    this.bank_branch,
    this.bank_city,
    this.bank_id,
    required this.beneficiary_name,
    this.paper_issue_date,
    this.paper_issue_place,
    this.paper_id,
    this.$__typename = 'claim_case_beneficiaries',
  });

  factory Fragment$ClaimCases$original_claim_case$claim_case_beneficiary.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$payment_method = json['payment_method'];
    final l$bank = json['bank'];
    final l$bank_account_number = json['bank_account_number'];
    final l$bank_branch = json['bank_branch'];
    final l$bank_city = json['bank_city'];
    final l$bank_id = json['bank_id'];
    final l$beneficiary_name = json['beneficiary_name'];
    final l$paper_issue_date = json['paper_issue_date'];
    final l$paper_issue_place = json['paper_issue_place'];
    final l$paper_id = json['paper_id'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
      id: (l$id as String),
      payment_method: fromJson$Enum$payout_payment_methods_enum(
        (l$payment_method as String),
      ),
      bank: l$bank == null
          ? null
          : Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
                .fromJson((l$bank as Map<String, dynamic>)),
      bank_account_number: (l$bank_account_number as String?),
      bank_branch: (l$bank_branch as String?),
      bank_city: (l$bank_city as String?),
      bank_id: (l$bank_id as String?),
      beneficiary_name: (l$beneficiary_name as String),
      paper_issue_date: (l$paper_issue_date as String?),
      paper_issue_place: (l$paper_issue_place as String?),
      paper_id: (l$paper_id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$payout_payment_methods_enum payment_method;

  final Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank?
  bank;

  final String? bank_account_number;

  final String? bank_branch;

  final String? bank_city;

  final String? bank_id;

  final String beneficiary_name;

  final String? paper_issue_date;

  final String? paper_issue_place;

  final String? paper_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$payment_method = payment_method;
    _resultData['payment_method'] = toJson$Enum$payout_payment_methods_enum(
      l$payment_method,
    );
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$bank_account_number = bank_account_number;
    _resultData['bank_account_number'] = l$bank_account_number;
    final l$bank_branch = bank_branch;
    _resultData['bank_branch'] = l$bank_branch;
    final l$bank_city = bank_city;
    _resultData['bank_city'] = l$bank_city;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$beneficiary_name = beneficiary_name;
    _resultData['beneficiary_name'] = l$beneficiary_name;
    final l$paper_issue_date = paper_issue_date;
    _resultData['paper_issue_date'] = l$paper_issue_date;
    final l$paper_issue_place = paper_issue_place;
    _resultData['paper_issue_place'] = l$paper_issue_place;
    final l$paper_id = paper_id;
    _resultData['paper_id'] = l$paper_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$payment_method = payment_method;
    final l$bank = bank;
    final l$bank_account_number = bank_account_number;
    final l$bank_branch = bank_branch;
    final l$bank_city = bank_city;
    final l$bank_id = bank_id;
    final l$beneficiary_name = beneficiary_name;
    final l$paper_issue_date = paper_issue_date;
    final l$paper_issue_place = paper_issue_place;
    final l$paper_id = paper_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$payment_method,
      l$bank,
      l$bank_account_number,
      l$bank_branch,
      l$bank_city,
      l$bank_id,
      l$beneficiary_name,
      l$paper_issue_date,
      l$paper_issue_place,
      l$paper_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$claim_case_beneficiary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$payment_method = payment_method;
    final lOther$payment_method = other.payment_method;
    if (l$payment_method != lOther$payment_method) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$bank_account_number = bank_account_number;
    final lOther$bank_account_number = other.bank_account_number;
    if (l$bank_account_number != lOther$bank_account_number) {
      return false;
    }
    final l$bank_branch = bank_branch;
    final lOther$bank_branch = other.bank_branch;
    if (l$bank_branch != lOther$bank_branch) {
      return false;
    }
    final l$bank_city = bank_city;
    final lOther$bank_city = other.bank_city;
    if (l$bank_city != lOther$bank_city) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$beneficiary_name = beneficiary_name;
    final lOther$beneficiary_name = other.beneficiary_name;
    if (l$beneficiary_name != lOther$beneficiary_name) {
      return false;
    }
    final l$paper_issue_date = paper_issue_date;
    final lOther$paper_issue_date = other.paper_issue_date;
    if (l$paper_issue_date != lOther$paper_issue_date) {
      return false;
    }
    final l$paper_issue_place = paper_issue_place;
    final lOther$paper_issue_place = other.paper_issue_place;
    if (l$paper_issue_place != lOther$paper_issue_place) {
      return false;
    }
    final l$paper_id = paper_id;
    final lOther$paper_id = other.paper_id;
    if (l$paper_id != lOther$paper_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
    on Fragment$ClaimCases$original_claim_case$claim_case_beneficiary {
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary instance,
    TRes Function(
      Fragment$ClaimCases$original_claim_case$claim_case_beneficiary,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary;

  TRes call({
    String? id,
    Enum$payout_payment_methods_enum? payment_method,
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank? bank,
    String? bank_account_number,
    String? bank_branch,
    String? bank_city,
    String? bank_id,
    String? beneficiary_name,
    String? paper_issue_date,
    String? paper_issue_place,
    String? paper_id,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
    TRes
  > get bank;
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$claim_case_beneficiary
  _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? payment_method = _undefined,
    Object? bank = _undefined,
    Object? bank_account_number = _undefined,
    Object? bank_branch = _undefined,
    Object? bank_city = _undefined,
    Object? bank_id = _undefined,
    Object? beneficiary_name = _undefined,
    Object? paper_issue_date = _undefined,
    Object? paper_issue_place = _undefined,
    Object? paper_id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    payment_method: payment_method == _undefined || payment_method == null
        ? _instance.payment_method
        : (payment_method as Enum$payout_payment_methods_enum),
    bank: bank == _undefined
        ? _instance.bank
        : (bank
              as Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank?),
    bank_account_number: bank_account_number == _undefined
        ? _instance.bank_account_number
        : (bank_account_number as String?),
    bank_branch: bank_branch == _undefined
        ? _instance.bank_branch
        : (bank_branch as String?),
    bank_city: bank_city == _undefined
        ? _instance.bank_city
        : (bank_city as String?),
    bank_id: bank_id == _undefined ? _instance.bank_id : (bank_id as String?),
    beneficiary_name: beneficiary_name == _undefined || beneficiary_name == null
        ? _instance.beneficiary_name
        : (beneficiary_name as String),
    paper_issue_date: paper_issue_date == _undefined
        ? _instance.paper_issue_date
        : (paper_issue_date as String?),
    paper_issue_place: paper_issue_place == _undefined
        ? _instance.paper_issue_place
        : (paper_issue_place as String?),
    paper_id: paper_id == _undefined
        ? _instance.paper_id
        : (paper_id as String?),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
    TRes
  > get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
              .stub(_then(_instance))
        : CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
            local$bank,
            (e) => call(bank: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    Enum$payout_payment_methods_enum? payment_method,
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank? bank,
    String? bank_account_number,
    String? bank_branch,
    String? bank_city,
    String? bank_id,
    String? beneficiary_name,
    String? paper_issue_date,
    String? paper_issue_place,
    String? paper_id,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
    TRes
  >
  get bank => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
      .stub(_res);
}

class Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank {
  Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank({
    required this.vn_name,
    required this.en_name,
    this.$__typename = 'banks',
  });

  factory Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vn_name = json['vn_name'];
    final l$en_name = json['en_name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
      vn_name: (l$vn_name as String),
      en_name: (l$en_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String vn_name;

  final String en_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vn_name = vn_name;
    _resultData['vn_name'] = l$vn_name;
    final l$en_name = en_name;
    _resultData['en_name'] = l$en_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vn_name = vn_name;
    final l$en_name = en_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vn_name, l$en_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vn_name = vn_name;
    final lOther$vn_name = other.vn_name;
    if (l$vn_name != lOther$vn_name) {
      return false;
    }
    final l$en_name = en_name;
    final lOther$en_name = other.en_name;
    if (l$en_name != lOther$en_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
    on Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank {
  CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
  >
  get copyWith => CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
    instance,
    TRes Function(
      Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank;

  factory CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank;

  TRes call({String? vn_name, String? en_name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank
  _instance;

  final TRes Function(
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vn_name = _undefined,
    Object? en_name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
      vn_name: vn_name == _undefined || vn_name == null
          ? _instance.vn_name
          : (vn_name as String),
      en_name: en_name == _undefined || en_name == null
          ? _instance.en_name
          : (en_name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$original_claim_case$claim_case_beneficiary$bank(
    this._res,
  );

  TRes _res;

  call({String? vn_name, String? en_name, String? $__typename}) => _res;
}

class Fragment$ClaimCases$insured_benefit_type {
  Fragment$ClaimCases$insured_benefit_type({
    required this.comment,
    required this.value,
    this.$__typename = 'insured_benefit_types',
  });

  factory Fragment$ClaimCases$insured_benefit_type.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$comment = json['comment'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$insured_benefit_type(
      comment: (l$comment as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String comment;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$comment = comment;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$comment, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$insured_benefit_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$insured_benefit_type
    on Fragment$ClaimCases$insured_benefit_type {
  CopyWith$Fragment$ClaimCases$insured_benefit_type<
    Fragment$ClaimCases$insured_benefit_type
  > get copyWith => CopyWith$Fragment$ClaimCases$insured_benefit_type(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes> {
  factory CopyWith$Fragment$ClaimCases$insured_benefit_type(
    Fragment$ClaimCases$insured_benefit_type instance,
    TRes Function(Fragment$ClaimCases$insured_benefit_type) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$insured_benefit_type;

  factory CopyWith$Fragment$ClaimCases$insured_benefit_type.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$insured_benefit_type;

  TRes call({String? comment, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$insured_benefit_type<TRes>
    implements CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$insured_benefit_type(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$insured_benefit_type _instance;

  final TRes Function(Fragment$ClaimCases$insured_benefit_type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? comment = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$insured_benefit_type(
    comment: comment == _undefined || comment == null
        ? _instance.comment
        : (comment as String),
    value: value == _undefined || value == null
        ? _instance.value
        : (value as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$insured_benefit_type<TRes>
    implements CopyWith$Fragment$ClaimCases$insured_benefit_type<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$insured_benefit_type(this._res);

  TRes _res;

  call({String? comment, String? value, String? $__typename}) => _res;
}

class Fragment$ClaimCases$claim_case_status {
  Fragment$ClaimCases$claim_case_status({
    required this.value,
    this.comment,
    this.$__typename = 'claim_case_statuses',
  });

  factory Fragment$ClaimCases$claim_case_status.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_status(
      value: (l$value as String),
      comment: (l$comment as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String? comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$comment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$claim_case_status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_status
    on Fragment$ClaimCases$claim_case_status {
  CopyWith$Fragment$ClaimCases$claim_case_status<
    Fragment$ClaimCases$claim_case_status
  > get copyWith => CopyWith$Fragment$ClaimCases$claim_case_status(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_status<TRes> {
  factory CopyWith$Fragment$ClaimCases$claim_case_status(
    Fragment$ClaimCases$claim_case_status instance,
    TRes Function(Fragment$ClaimCases$claim_case_status) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_status;

  factory CopyWith$Fragment$ClaimCases$claim_case_status.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$claim_case_status;

  TRes call({String? value, String? comment, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_status<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_status<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_status(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_status _instance;

  final TRes Function(Fragment$ClaimCases$claim_case_status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$claim_case_status(
    value: value == _undefined || value == null
        ? _instance.value
        : (value as String),
    comment: comment == _undefined ? _instance.comment : (comment as String?),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_status<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_status<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_status(this._res);

  TRes _res;

  call({String? value, String? comment, String? $__typename}) => _res;
}

class Fragment$ClaimCases$insured_person {
  Fragment$ClaimCases$insured_person({
    required this.id,
    required this.name,
    this.$__typename = 'insured_persons',
  });

  factory Fragment$ClaimCases$insured_person.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$insured_person(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$insured_person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$insured_person
    on Fragment$ClaimCases$insured_person {
  CopyWith$Fragment$ClaimCases$insured_person<
    Fragment$ClaimCases$insured_person
  > get copyWith => CopyWith$Fragment$ClaimCases$insured_person(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimCases$insured_person<TRes> {
  factory CopyWith$Fragment$ClaimCases$insured_person(
    Fragment$ClaimCases$insured_person instance,
    TRes Function(Fragment$ClaimCases$insured_person) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$insured_person;

  factory CopyWith$Fragment$ClaimCases$insured_person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$insured_person;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$insured_person<TRes>
    implements CopyWith$Fragment$ClaimCases$insured_person<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$insured_person(this._instance, this._then);

  final Fragment$ClaimCases$insured_person _instance;

  final TRes Function(Fragment$ClaimCases$insured_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$insured_person(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    name: name == _undefined || name == null
        ? _instance.name
        : (name as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$insured_person<TRes>
    implements CopyWith$Fragment$ClaimCases$insured_person<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$insured_person(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Fragment$ClaimCases$claim_case_input_diagnoses {
  Fragment$ClaimCases$claim_case_input_diagnoses({
    required this.id,
    required this.icd_metadata_id,
    required this.icd,
    this.$__typename = 'claim_case_input_diagnoses',
  });

  factory Fragment$ClaimCases$claim_case_input_diagnoses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$icd_metadata_id = json['icd_metadata_id'];
    final l$icd = json['icd'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_input_diagnoses(
      id: (l$id as String),
      icd_metadata_id: (l$icd_metadata_id as String),
      icd: Fragment$ClaimCases$claim_case_input_diagnoses$icd.fromJson(
        (l$icd as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String icd_metadata_id;

  final Fragment$ClaimCases$claim_case_input_diagnoses$icd icd;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$icd_metadata_id = icd_metadata_id;
    _resultData['icd_metadata_id'] = l$icd_metadata_id;
    final l$icd = icd;
    _resultData['icd'] = l$icd.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$icd_metadata_id = icd_metadata_id;
    final l$icd = icd;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$icd_metadata_id, l$icd, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$claim_case_input_diagnoses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$icd_metadata_id = icd_metadata_id;
    final lOther$icd_metadata_id = other.icd_metadata_id;
    if (l$icd_metadata_id != lOther$icd_metadata_id) {
      return false;
    }
    final l$icd = icd;
    final lOther$icd = other.icd;
    if (l$icd != lOther$icd) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_input_diagnoses
    on Fragment$ClaimCases$claim_case_input_diagnoses {
  CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<
    Fragment$ClaimCases$claim_case_input_diagnoses
  > get copyWith => CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<TRes> {
  factory CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses(
    Fragment$ClaimCases$claim_case_input_diagnoses instance,
    TRes Function(Fragment$ClaimCases$claim_case_input_diagnoses) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses;

  factory CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses;

  TRes call({
    String? id,
    String? icd_metadata_id,
    Fragment$ClaimCases$claim_case_input_diagnoses$icd? icd,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes> get icd;
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_input_diagnoses _instance;

  final TRes Function(Fragment$ClaimCases$claim_case_input_diagnoses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? icd_metadata_id = _undefined,
    Object? icd = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$claim_case_input_diagnoses(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    icd_metadata_id: icd_metadata_id == _undefined || icd_metadata_id == null
        ? _instance.icd_metadata_id
        : (icd_metadata_id as String),
    icd: icd == _undefined || icd == null
        ? _instance.icd
        : (icd as Fragment$ClaimCases$claim_case_input_diagnoses$icd),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes> get icd {
    final local$icd = _instance.icd;
    return CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd(
      local$icd,
      (e) => call(icd: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses(this._res);

  TRes _res;

  call({
    String? id,
    String? icd_metadata_id,
    Fragment$ClaimCases$claim_case_input_diagnoses$icd? icd,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes>
  get icd => CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd.stub(
    _res,
  );
}

class Fragment$ClaimCases$claim_case_input_diagnoses$icd {
  Fragment$ClaimCases$claim_case_input_diagnoses$icd({
    required this.title,
    required this.value,
    this.$__typename = 'metadata',
  });

  factory Fragment$ClaimCases$claim_case_input_diagnoses$icd.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$title = json['title'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_input_diagnoses$icd(
      title: (l$title as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$claim_case_input_diagnoses$icd) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_input_diagnoses$icd
    on Fragment$ClaimCases$claim_case_input_diagnoses$icd {
  CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<
    Fragment$ClaimCases$claim_case_input_diagnoses$icd
  > get copyWith => CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd(
    Fragment$ClaimCases$claim_case_input_diagnoses$icd instance,
    TRes Function(Fragment$ClaimCases$claim_case_input_diagnoses$icd) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd;

  factory CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd;

  TRes call({String? title, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_input_diagnoses$icd _instance;

  final TRes Function(Fragment$ClaimCases$claim_case_input_diagnoses$icd) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$claim_case_input_diagnoses$icd(
    title: title == _undefined || title == null
        ? _instance.title
        : (title as String),
    value: value == _undefined || value == null
        ? _instance.value
        : (value as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_input_diagnoses$icd<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_input_diagnoses$icd(
    this._res,
  );

  TRes _res;

  call({String? title, String? value, String? $__typename}) => _res;
}

class Fragment$ClaimCases$action_logs {
  Fragment$ClaimCases$action_logs({
    required this.id,
    this.new_value,
    this.old_value,
    required this.created_at,
    this.$__typename = 'audit_logs_record_status_changes',
  });

  factory Fragment$ClaimCases$action_logs.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$new_value = json['new_value'];
    final l$old_value = json['old_value'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$action_logs(
      id: (l$id as String),
      new_value: (l$new_value as String?),
      old_value: (l$old_value as String?),
      created_at: (l$created_at as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? new_value;

  final String? old_value;

  final String created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$new_value = new_value;
    _resultData['new_value'] = l$new_value;
    final l$old_value = old_value;
    _resultData['old_value'] = l$old_value;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$new_value = new_value;
    final l$old_value = old_value;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$new_value,
      l$old_value,
      l$created_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$action_logs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$new_value = new_value;
    final lOther$new_value = other.new_value;
    if (l$new_value != lOther$new_value) {
      return false;
    }
    final l$old_value = old_value;
    final lOther$old_value = other.old_value;
    if (l$old_value != lOther$old_value) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$action_logs
    on Fragment$ClaimCases$action_logs {
  CopyWith$Fragment$ClaimCases$action_logs<Fragment$ClaimCases$action_logs>
  get copyWith => CopyWith$Fragment$ClaimCases$action_logs(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimCases$action_logs<TRes> {
  factory CopyWith$Fragment$ClaimCases$action_logs(
    Fragment$ClaimCases$action_logs instance,
    TRes Function(Fragment$ClaimCases$action_logs) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$action_logs;

  factory CopyWith$Fragment$ClaimCases$action_logs.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$action_logs;

  TRes call({
    String? id,
    String? new_value,
    String? old_value,
    String? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ClaimCases$action_logs<TRes>
    implements CopyWith$Fragment$ClaimCases$action_logs<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$action_logs(this._instance, this._then);

  final Fragment$ClaimCases$action_logs _instance;

  final TRes Function(Fragment$ClaimCases$action_logs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? new_value = _undefined,
    Object? old_value = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$action_logs(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    new_value: new_value == _undefined
        ? _instance.new_value
        : (new_value as String?),
    old_value: old_value == _undefined
        ? _instance.old_value
        : (old_value as String?),
    created_at: created_at == _undefined || created_at == null
        ? _instance.created_at
        : (created_at as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$action_logs<TRes>
    implements CopyWith$Fragment$ClaimCases$action_logs<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$action_logs(this._res);

  TRes _res;

  call({
    String? id,
    String? new_value,
    String? old_value,
    String? created_at,
    String? $__typename,
  }) => _res;
}

class Fragment$ClaimCases$claim_case_details {
  Fragment$ClaimCases$claim_case_details({
    required this.id,
    required this.total_paid_amount,
    this.note,
    required this.plan_insured_benefit,
    this.$__typename = 'claim_case_details',
  });

  factory Fragment$ClaimCases$claim_case_details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$total_paid_amount = json['total_paid_amount'];
    final l$note = json['note'];
    final l$plan_insured_benefit = json['plan_insured_benefit'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details(
      id: (l$id as String),
      total_paid_amount: (l$total_paid_amount as num).toDouble(),
      note: (l$note as String?),
      plan_insured_benefit:
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit.fromJson(
        (l$plan_insured_benefit as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double total_paid_amount;

  final String? note;

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit
  plan_insured_benefit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$total_paid_amount = total_paid_amount;
    _resultData['total_paid_amount'] = l$total_paid_amount;
    final l$note = note;
    _resultData['note'] = l$note;
    final l$plan_insured_benefit = plan_insured_benefit;
    _resultData['plan_insured_benefit'] = l$plan_insured_benefit.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$total_paid_amount = total_paid_amount;
    final l$note = note;
    final l$plan_insured_benefit = plan_insured_benefit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$total_paid_amount,
      l$note,
      l$plan_insured_benefit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$claim_case_details) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$total_paid_amount = total_paid_amount;
    final lOther$total_paid_amount = other.total_paid_amount;
    if (l$total_paid_amount != lOther$total_paid_amount) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    final l$plan_insured_benefit = plan_insured_benefit;
    final lOther$plan_insured_benefit = other.plan_insured_benefit;
    if (l$plan_insured_benefit != lOther$plan_insured_benefit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details
    on Fragment$ClaimCases$claim_case_details {
  CopyWith$Fragment$ClaimCases$claim_case_details<
    Fragment$ClaimCases$claim_case_details
  > get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details<TRes> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details(
    Fragment$ClaimCases$claim_case_details instance,
    TRes Function(Fragment$ClaimCases$claim_case_details) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details;

  factory CopyWith$Fragment$ClaimCases$claim_case_details.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details;

  TRes call({
    String? id,
    double? total_paid_amount,
    String? note,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit?
    plan_insured_benefit,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<TRes>
  get plan_insured_benefit;
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_details<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details _instance;

  final TRes Function(Fragment$ClaimCases$claim_case_details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? total_paid_amount = _undefined,
    Object? note = _undefined,
    Object? plan_insured_benefit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$claim_case_details(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    total_paid_amount:
        total_paid_amount == _undefined || total_paid_amount == null
            ? _instance.total_paid_amount
            : (total_paid_amount as double),
    note: note == _undefined ? _instance.note : (note as String?),
    plan_insured_benefit: plan_insured_benefit == _undefined ||
            plan_insured_benefit == null
        ? _instance.plan_insured_benefit
        : (plan_insured_benefit
              as Fragment$ClaimCases$claim_case_details$plan_insured_benefit),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<TRes>
  get plan_insured_benefit {
    final local$plan_insured_benefit = _instance.plan_insured_benefit;
    return CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
      local$plan_insured_benefit,
      (e) => call(plan_insured_benefit: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details<TRes>
    implements CopyWith$Fragment$ClaimCases$claim_case_details<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details(this._res);

  TRes _res;

  call({
    String? id,
    double? total_paid_amount,
    String? note,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit?
    plan_insured_benefit,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<TRes>
  get plan_insured_benefit => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit
      .stub(_res);
}

class Fragment$ClaimCases$claim_case_details$plan_insured_benefit {
  Fragment$ClaimCases$claim_case_details$plan_insured_benefit({
    required this.id,
    required this.plan_id,
    required this.plan_balance_benefits,
    required this.insured_benefit,
    this.$__typename = 'plan_insured_benefits',
  });

  factory Fragment$ClaimCases$claim_case_details$plan_insured_benefit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$plan_id = json['plan_id'];
    final l$plan_balance_benefits = json['plan_balance_benefits'];
    final l$insured_benefit = json['insured_benefit'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
      id: (l$id as String),
      plan_id: (l$plan_id as String),
      plan_balance_benefits: (l$plan_balance_benefits as List<dynamic>).map(
        (
          e,
        ) => Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
            .fromJson((e as Map<String, dynamic>)),
      ).toList(),
      insured_benefit:
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
              .fromJson((l$insured_benefit as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String plan_id;

  final List<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
  > plan_balance_benefits;

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
  insured_benefit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$plan_id = plan_id;
    _resultData['plan_id'] = l$plan_id;
    final l$plan_balance_benefits = plan_balance_benefits;
    _resultData['plan_balance_benefits'] =
        l$plan_balance_benefits.map((e) => e.toJson()).toList();
    final l$insured_benefit = insured_benefit;
    _resultData['insured_benefit'] = l$insured_benefit.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$plan_id = plan_id;
    final l$plan_balance_benefits = plan_balance_benefits;
    final l$insured_benefit = insured_benefit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$plan_id,
      Object.hashAll(l$plan_balance_benefits.map((v) => v)),
      l$insured_benefit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$claim_case_details$plan_insured_benefit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$plan_id = plan_id;
    final lOther$plan_id = other.plan_id;
    if (l$plan_id != lOther$plan_id) {
      return false;
    }
    final l$plan_balance_benefits = plan_balance_benefits;
    final lOther$plan_balance_benefits = other.plan_balance_benefits;
    if (l$plan_balance_benefits.length != lOther$plan_balance_benefits.length) {
      return false;
    }
    for (int i = 0; i < l$plan_balance_benefits.length; i++) {
      final l$plan_balance_benefits$entry = l$plan_balance_benefits[i];
      final lOther$plan_balance_benefits$entry =
          lOther$plan_balance_benefits[i];
      if (l$plan_balance_benefits$entry != lOther$plan_balance_benefits$entry) {
        return false;
      }
    }
    final l$insured_benefit = insured_benefit;
    final lOther$insured_benefit = other.insured_benefit;
    if (l$insured_benefit != lOther$insured_benefit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details$plan_insured_benefit
    on Fragment$ClaimCases$claim_case_details$plan_insured_benefit {
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit
  >
  get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit instance,
    TRes Function(Fragment$ClaimCases$claim_case_details$plan_insured_benefit)
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit;

  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit;

  TRes call({
    String? id,
    String? plan_id,
    List<
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    >?
    plan_balance_benefits,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit?
    insured_benefit,
    String? $__typename,
  });
  TRes plan_balance_benefits(
    Iterable<
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    >
    Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
    TRes
  > get insured_benefit;
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit _instance;

  final TRes Function(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? plan_id = _undefined,
    Object? plan_balance_benefits = _undefined,
    Object? insured_benefit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    plan_id: plan_id == _undefined || plan_id == null
        ? _instance.plan_id
        : (plan_id as String),
    plan_balance_benefits:
        plan_balance_benefits == _undefined || plan_balance_benefits == null
            ? _instance.plan_balance_benefits
            : (plan_balance_benefits as List<
                Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
              >),
    insured_benefit: insured_benefit == _undefined || insured_benefit == null
        ? _instance.insured_benefit
        : (insured_benefit
              as Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  TRes plan_balance_benefits(
    Iterable<
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    >
    Function(
      Iterable<
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
        >
      >,
    )
    _fn,
  ) => call(
    plan_balance_benefits: _fn(_instance.plan_balance_benefits.map(
      (
        e,
      ) => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
        e,
        (i) => i,
      ),
    )).toList(),
  );
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
    TRes
  > get insured_benefit {
    final local$insured_benefit = _instance.insured_benefit;
    return CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
      local$insured_benefit,
      (e) => call(insured_benefit: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? plan_id,
    List<
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    >?
    plan_balance_benefits,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit?
    insured_benefit,
    String? $__typename,
  }) => _res;
  plan_balance_benefits(_fn) => _res;
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
    TRes
  >
  get insured_benefit => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
      .stub(_res);
}

class Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits {
  Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits({
    required this.id,
    required this.plan_balance,
    this.$__typename = 'plan_balance_benefits',
  });

  factory Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$plan_balance = json['plan_balance'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
      id: (l$id as String),
      plan_balance:
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
              .fromJson((l$plan_balance as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
  plan_balance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$plan_balance = plan_balance;
    _resultData['plan_balance'] = l$plan_balance.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$plan_balance = plan_balance;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$plan_balance, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$plan_balance = plan_balance;
    final lOther$plan_balance = other.plan_balance;
    if (l$plan_balance != lOther$plan_balance) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    on Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits {
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
  >
  get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
    instance,
    TRes Function(
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits;

  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits;

  TRes call({
    String? id,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance?
    plan_balance,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
    TRes
  > get plan_balance;
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits
  _instance;

  final TRes Function(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? plan_balance = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      plan_balance: plan_balance == _undefined || plan_balance == null
          ? _instance.plan_balance
          : (plan_balance
                as Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
    TRes
  > get plan_balance {
    final local$plan_balance = _instance.plan_balance;
    return CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
      local$plan_balance,
      (e) => call(plan_balance: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance?
    plan_balance,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
    TRes
  >
  get plan_balance => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
      .stub(_res);
}

class Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance {
  Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance({
    required this.id,
    required this.name,
    this.$__typename = 'plan_balances',
  });

  factory Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
    on Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance {
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
  >
  get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
    instance,
    TRes Function(
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance;

  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance
  _instance;

  final TRes Function(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$plan_balance_benefits$plan_balance(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit {
  Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit({
    required this.id,
    required this.code,
    required this.name,
    required this.insured_benefit_type,
    this.$__typename = 'insured_benefits',
  });

  factory Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$insured_benefit_type = json['insured_benefit_type'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      insured_benefit_type:
          Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
              .fromJson((l$insured_benefit_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
  insured_benefit_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$insured_benefit_type = insured_benefit_type;
    _resultData['insured_benefit_type'] = l$insured_benefit_type.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$insured_benefit_type = insured_benefit_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$insured_benefit_type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$insured_benefit_type = insured_benefit_type;
    final lOther$insured_benefit_type = other.insured_benefit_type;
    if (l$insured_benefit_type != lOther$insured_benefit_type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
    on Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit {
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
  >
  get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
    instance,
    TRes Function(
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit;

  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit;

  TRes call({
    String? id,
    String? code,
    String? name,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type?
    insured_benefit_type,
    String? $__typename,
  });
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
    TRes
  > get insured_benefit_type;
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit
  _instance;

  final TRes Function(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? insured_benefit_type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      insured_benefit_type: insured_benefit_type == _undefined ||
              insured_benefit_type == null
          ? _instance.insured_benefit_type
          : (insured_benefit_type
                as Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
    TRes
  > get insured_benefit_type {
    final local$insured_benefit_type = _instance.insured_benefit_type;
    return CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
      local$insured_benefit_type,
      (e) => call(insured_benefit_type: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type?
    insured_benefit_type,
    String? $__typename,
  }) => _res;
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
    TRes
  >
  get insured_benefit_type => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
      .stub(_res);
}

class Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type {
  Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type({
    required this.comment,
    required this.value,
    this.$__typename = 'insured_benefit_types',
  });

  factory Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$comment = json['comment'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
      comment: (l$comment as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String comment;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$comment = comment;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$comment, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
    on Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type {
  CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
  >
  get copyWith => CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
  TRes
> {
  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
    instance,
    TRes Function(
      Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type,
    )
    then,
  ) = _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type;

  factory CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type;

  TRes call({String? comment, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
          TRes
        > {
  _CopyWithImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type
  _instance;

  final TRes Function(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type,
  ) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? comment = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
      comment: comment == _undefined || comment == null
          ? _instance.comment
          : (comment as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
  TRes
>
    implements
        CopyWith$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type<
          TRes
        > {
  _CopyWithStubImpl$Fragment$ClaimCases$claim_case_details$plan_insured_benefit$insured_benefit$insured_benefit_type(
    this._res,
  );

  TRes _res;

  call({String? comment, String? value, String? $__typename}) => _res;
}

class Fragment$ClaimCases$assessment_summary {
  Fragment$ClaimCases$assessment_summary({
    required this.id,
    required this.content,
    this.$__typename = 'claim_notes',
  });

  factory Fragment$ClaimCases$assessment_summary.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$assessment_summary(
      id: (l$id as String),
      content: (l$content as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String content;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$content, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$assessment_summary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$assessment_summary
    on Fragment$ClaimCases$assessment_summary {
  CopyWith$Fragment$ClaimCases$assessment_summary<
    Fragment$ClaimCases$assessment_summary
  > get copyWith => CopyWith$Fragment$ClaimCases$assessment_summary(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$ClaimCases$assessment_summary<TRes> {
  factory CopyWith$Fragment$ClaimCases$assessment_summary(
    Fragment$ClaimCases$assessment_summary instance,
    TRes Function(Fragment$ClaimCases$assessment_summary) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$assessment_summary;

  factory CopyWith$Fragment$ClaimCases$assessment_summary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$assessment_summary;

  TRes call({String? id, String? content, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$assessment_summary<TRes>
    implements CopyWith$Fragment$ClaimCases$assessment_summary<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$assessment_summary(
    this._instance,
    this._then,
  );

  final Fragment$ClaimCases$assessment_summary _instance;

  final TRes Function(Fragment$ClaimCases$assessment_summary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$assessment_summary(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    content: content == _undefined || content == null
        ? _instance.content
        : (content as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$assessment_summary<TRes>
    implements CopyWith$Fragment$ClaimCases$assessment_summary<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$assessment_summary(this._res);

  TRes _res;

  call({String? id, String? content, String? $__typename}) => _res;
}

class Fragment$ClaimCases$created_by_user {
  Fragment$ClaimCases$created_by_user({
    required this.id,
    required this.name,
    this.$__typename = 'identity_users',
  });

  factory Fragment$ClaimCases$created_by_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ClaimCases$created_by_user(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ClaimCases$created_by_user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ClaimCases$created_by_user
    on Fragment$ClaimCases$created_by_user {
  CopyWith$Fragment$ClaimCases$created_by_user<
    Fragment$ClaimCases$created_by_user
  >
  get copyWith => CopyWith$Fragment$ClaimCases$created_by_user(this, (i) => i);
}

abstract class CopyWith$Fragment$ClaimCases$created_by_user<TRes> {
  factory CopyWith$Fragment$ClaimCases$created_by_user(
    Fragment$ClaimCases$created_by_user instance,
    TRes Function(Fragment$ClaimCases$created_by_user) then,
  ) = _CopyWithImpl$Fragment$ClaimCases$created_by_user;

  factory CopyWith$Fragment$ClaimCases$created_by_user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ClaimCases$created_by_user;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$ClaimCases$created_by_user<TRes>
    implements CopyWith$Fragment$ClaimCases$created_by_user<TRes> {
  _CopyWithImpl$Fragment$ClaimCases$created_by_user(this._instance, this._then);

  final Fragment$ClaimCases$created_by_user _instance;

  final TRes Function(Fragment$ClaimCases$created_by_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Fragment$ClaimCases$created_by_user(
    id: id == _undefined || id == null ? _instance.id : (id as String),
    name: name == _undefined || name == null
        ? _instance.name
        : (name as String),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
}

class _CopyWithStubImpl$Fragment$ClaimCases$created_by_user<TRes>
    implements CopyWith$Fragment$ClaimCases$created_by_user<TRes> {
  _CopyWithStubImpl$Fragment$ClaimCases$created_by_user(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Query$getClaimCases {
  Query$getClaimCases({
    required this.claim_cases,
    this.$__typename = 'query_root',
  });

  factory Query$getClaimCases.fromJson(Map<String, dynamic> json) {
    final l$claim_cases = json['claim_cases'];
    final l$$__typename = json['__typename'];
    return Query$getClaimCases(
      claim_cases: (l$claim_cases as List<dynamic>).map(
        (e) => Fragment$ClaimCases.fromJson((e as Map<String, dynamic>)),
      ).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ClaimCases> claim_cases;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$claim_cases = claim_cases;
    _resultData['claim_cases'] = l$claim_cases.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$claim_cases = claim_cases;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$claim_cases.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getClaimCases) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$claim_cases = claim_cases;
    final lOther$claim_cases = other.claim_cases;
    if (l$claim_cases.length != lOther$claim_cases.length) {
      return false;
    }
    for (int i = 0; i < l$claim_cases.length; i++) {
      final l$claim_cases$entry = l$claim_cases[i];
      final lOther$claim_cases$entry = lOther$claim_cases[i];
      if (l$claim_cases$entry != lOther$claim_cases$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getClaimCases on Query$getClaimCases {
  CopyWith$Query$getClaimCases<Query$getClaimCases>
  get copyWith => CopyWith$Query$getClaimCases(this, (i) => i);
}

abstract class CopyWith$Query$getClaimCases<TRes> {
  factory CopyWith$Query$getClaimCases(
    Query$getClaimCases instance,
    TRes Function(Query$getClaimCases) then,
  ) = _CopyWithImpl$Query$getClaimCases;

  factory CopyWith$Query$getClaimCases.stub(TRes res) =
      _CopyWithStubImpl$Query$getClaimCases;

  TRes call({List<Fragment$ClaimCases>? claim_cases, String? $__typename});
  TRes claim_cases(
    Iterable<Fragment$ClaimCases> Function(
      Iterable<CopyWith$Fragment$ClaimCases<Fragment$ClaimCases>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getClaimCases<TRes>
    implements CopyWith$Query$getClaimCases<TRes> {
  _CopyWithImpl$Query$getClaimCases(this._instance, this._then);

  final Query$getClaimCases _instance;

  final TRes Function(Query$getClaimCases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? claim_cases = _undefined,
    Object? $__typename = _undefined,
  }) => _then(Query$getClaimCases(
    claim_cases: claim_cases == _undefined || claim_cases == null
        ? _instance.claim_cases
        : (claim_cases as List<Fragment$ClaimCases>),
    $__typename: $__typename == _undefined || $__typename == null
        ? _instance.$__typename
        : ($__typename as String),
  ));
  TRes claim_cases(
    Iterable<Fragment$ClaimCases> Function(
      Iterable<CopyWith$Fragment$ClaimCases<Fragment$ClaimCases>>,
    )
    _fn,
  ) => call(
    claim_cases: _fn(_instance.claim_cases.map(
      (e) => CopyWith$Fragment$ClaimCases(e, (i) => i),
    )).toList(),
  );
}

class _CopyWithStubImpl$Query$getClaimCases<TRes>
    implements CopyWith$Query$getClaimCases<TRes> {
  _CopyWithStubImpl$Query$getClaimCases(this._res);

  TRes _res;

  call({List<Fragment$ClaimCases>? claim_cases, String? $__typename}) => _res;
  claim_cases(_fn) => _res;
}

const documentNodeQuerygetClaimCases = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getClaimCases'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'claim_cases'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'order_by'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'created_at'),
                      value: EnumValueNode(name: NameNode(value: 'desc')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'status'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_neq'),
                            value: EnumValueNode(
                              name: NameNode(value: 'Cancelled'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'ClaimCases'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionClaimCases,
    fragmentDefinitionClaimPendingCodes,
    fragmentDefinitionClaimDocuments,
  ],
);
Query$getClaimCases _parserFn$Query$getClaimCases(
  Map<String, dynamic> data,
) => Query$getClaimCases.fromJson(data);
typedef OnQueryComplete$Query$getClaimCases = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getClaimCases?,
);

class Options$Query$getClaimCases
    extends graphql.QueryOptions<Query$getClaimCases> {
  Options$Query$getClaimCases({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getClaimCases? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getClaimCases? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$getClaimCases(data),
               ),
         onError: onError,
         document: documentNodeQuerygetClaimCases,
         parserFn: _parserFn$Query$getClaimCases,
       );

  final OnQueryComplete$Query$getClaimCases? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$getClaimCases
    extends graphql.WatchQueryOptions<Query$getClaimCases> {
  WatchOptions$Query$getClaimCases({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getClaimCases? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQuerygetClaimCases,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$getClaimCases,
       );
}

class FetchMoreOptions$Query$getClaimCases extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getClaimCases({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQuerygetClaimCases,
       );
}

extension ClientExtension$Query$getClaimCases on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getClaimCases>> query$getClaimCases([
    Options$Query$getClaimCases? options,
  ]) async => await this.query(options ?? Options$Query$getClaimCases());
  graphql.ObservableQuery<Query$getClaimCases> watchQuery$getClaimCases([
    WatchOptions$Query$getClaimCases? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$getClaimCases());
  void writeQuery$getClaimCases({
    required Query$getClaimCases data,
    bool broadcast = true,
  }) => this.writeQuery(graphql.Request(
    operation: graphql.Operation(document: documentNodeQuerygetClaimCases),
  ), data: data.toJson(), broadcast: broadcast);
  Query$getClaimCases? readQuery$getClaimCases({bool optimistic = true}) {
    final result = this.readQuery(graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerygetClaimCases),
    ), optimistic: optimistic);
    return result == null ? null : Query$getClaimCases.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getClaimCases> useQuery$getClaimCases([
  Options$Query$getClaimCases? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$getClaimCases());
graphql.ObservableQuery<Query$getClaimCases> useWatchQuery$getClaimCases([
  WatchOptions$Query$getClaimCases? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$getClaimCases(),
);

class Query$getClaimCases$Widget
    extends graphql_flutter.Query<Query$getClaimCases> {
  Query$getClaimCases$Widget({
    widgets.Key? key,
    Options$Query$getClaimCases? options,
    required graphql_flutter.QueryBuilder<Query$getClaimCases> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$getClaimCases(),
         builder: builder,
       );
}
