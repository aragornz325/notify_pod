/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../enums/devices_type.dart' as _i2;

abstract class DeviceToken implements _i1.TableRow, _i1.ProtocolSerialization {
  DeviceToken._({
    this.id,
    required this.token,
    required this.userId,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DeviceToken({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DeviceTokenImpl;

  factory DeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeviceToken(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
      userId: jsonSerialization['userId'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = DeviceTokenTable();

  static const db = DeviceTokenRepository._();

  @override
  int? id;

  String token;

  String userId;

  _i2.DevicesType type;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  DeviceToken copyWith({
    int? id,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static DeviceTokenInclude include() {
    return DeviceTokenInclude._();
  }

  static DeviceTokenIncludeList includeList({
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTokenTable>? orderByList,
    DeviceTokenInclude? include,
  }) {
    return DeviceTokenIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DeviceToken.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DeviceToken.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DeviceTokenImpl extends DeviceToken {
  _DeviceTokenImpl({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          token: token,
          userId: userId,
          type: type,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  DeviceToken copyWith({
    Object? id = _Undefined,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DeviceToken(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class DeviceTokenTable extends _i1.Table {
  DeviceTokenTable({super.tableRelation})
      : super(tableName: 'serverpod_device_token') {
    token = _i1.ColumnString(
      'token',
      this,
    );
    userId = _i1.ColumnString(
      'userId',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byIndex,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString token;

  late final _i1.ColumnString userId;

  late final _i1.ColumnEnum<_i2.DevicesType> type;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        token,
        userId,
        type,
        createdAt,
        updatedAt,
      ];
}

class DeviceTokenInclude extends _i1.IncludeObject {
  DeviceTokenInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DeviceToken.t;
}

class DeviceTokenIncludeList extends _i1.IncludeList {
  DeviceTokenIncludeList._({
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DeviceToken.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DeviceToken.t;
}

class DeviceTokenRepository {
  const DeviceTokenRepository._();

  Future<List<DeviceToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DeviceToken>(
      where: where?.call(DeviceToken.t),
      orderBy: orderBy?.call(DeviceToken.t),
      orderByList: orderByList?.call(DeviceToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DeviceToken?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    int? offset,
    _i1.OrderByBuilder<DeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DeviceToken>(
      where: where?.call(DeviceToken.t),
      orderBy: orderBy?.call(DeviceToken.t),
      orderByList: orderByList?.call(DeviceToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DeviceToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DeviceToken>(
      id,
      transaction: transaction,
    );
  }

  Future<List<DeviceToken>> insert(
    _i1.Session session,
    List<DeviceToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DeviceToken>(
      rows,
      transaction: transaction,
    );
  }

  Future<DeviceToken> insertRow(
    _i1.Session session,
    DeviceToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DeviceToken>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DeviceToken>> update(
    _i1.Session session,
    List<DeviceToken> rows, {
    _i1.ColumnSelections<DeviceTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DeviceToken>(
      rows,
      columns: columns?.call(DeviceToken.t),
      transaction: transaction,
    );
  }

  Future<DeviceToken> updateRow(
    _i1.Session session,
    DeviceToken row, {
    _i1.ColumnSelections<DeviceTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DeviceToken>(
      row,
      columns: columns?.call(DeviceToken.t),
      transaction: transaction,
    );
  }

  Future<List<DeviceToken>> delete(
    _i1.Session session,
    List<DeviceToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DeviceToken>(
      rows,
      transaction: transaction,
    );
  }

  Future<DeviceToken> deleteRow(
    _i1.Session session,
    DeviceToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DeviceToken>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DeviceToken>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DeviceTokenTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DeviceToken>(
      where: where(DeviceToken.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DeviceToken>(
      where: where?.call(DeviceToken.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
