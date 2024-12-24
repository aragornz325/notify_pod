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
import '../junction/device_token.dart' as _i3;

abstract class DeviceToken implements _i1.TableRow, _i1.ProtocolSerialization {
  DeviceToken._({
    this.id,
    required this.token,
    required this.userId,
    required this.type,
    required this.deviceId,
    required this.createdAt,
    required this.updatedAt,
    this.register,
  });

  factory DeviceToken({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required String deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i3.RegisterDeviceToken>? register,
  }) = _DeviceTokenImpl;

  factory DeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeviceToken(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
      userId: jsonSerialization['userId'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
      deviceId: jsonSerialization['deviceId'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      register: (jsonSerialization['register'] as List?)
          ?.map((e) =>
              _i3.RegisterDeviceToken.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = DeviceTokenTable();

  static const db = DeviceTokenRepository._();

  @override
  int? id;

  String token;

  String userId;

  _i2.DevicesType type;

  String deviceId;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i3.RegisterDeviceToken>? register;

  @override
  _i1.Table get table => t;

  DeviceToken copyWith({
    int? id,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    String? deviceId,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i3.RegisterDeviceToken>? register,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
      'deviceId': deviceId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (register != null)
        'register': register?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
      'deviceId': deviceId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (register != null)
        'register': register?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static DeviceTokenInclude include(
      {_i3.RegisterDeviceTokenIncludeList? register}) {
    return DeviceTokenInclude._(register: register);
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
    required String deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i3.RegisterDeviceToken>? register,
  }) : super._(
          id: id,
          token: token,
          userId: userId,
          type: type,
          deviceId: deviceId,
          createdAt: createdAt,
          updatedAt: updatedAt,
          register: register,
        );

  @override
  DeviceToken copyWith({
    Object? id = _Undefined,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    String? deviceId,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? register = _Undefined,
  }) {
    return DeviceToken(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      deviceId: deviceId ?? this.deviceId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      register: register is List<_i3.RegisterDeviceToken>?
          ? register
          : this.register?.map((e0) => e0.copyWith()).toList(),
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
    deviceId = _i1.ColumnString(
      'deviceId',
      this,
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

  late final _i1.ColumnString deviceId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i3.RegisterDeviceTokenTable? ___register;

  _i1.ManyRelation<_i3.RegisterDeviceTokenTable>? _register;

  _i3.RegisterDeviceTokenTable get __register {
    if (___register != null) return ___register!;
    ___register = _i1.createRelationTable(
      relationFieldName: '__register',
      field: DeviceToken.t.id,
      foreignField: _i3.RegisterDeviceToken.t.tokenId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RegisterDeviceTokenTable(tableRelation: foreignTableRelation),
    );
    return ___register!;
  }

  _i1.ManyRelation<_i3.RegisterDeviceTokenTable> get register {
    if (_register != null) return _register!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'register',
      field: DeviceToken.t.id,
      foreignField: _i3.RegisterDeviceToken.t.tokenId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RegisterDeviceTokenTable(tableRelation: foreignTableRelation),
    );
    _register = _i1.ManyRelation<_i3.RegisterDeviceTokenTable>(
      tableWithRelations: relationTable,
      table: _i3.RegisterDeviceTokenTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _register!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        token,
        userId,
        type,
        deviceId,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'register') {
      return __register;
    }
    return null;
  }
}

class DeviceTokenInclude extends _i1.IncludeObject {
  DeviceTokenInclude._({_i3.RegisterDeviceTokenIncludeList? register}) {
    _register = register;
  }

  _i3.RegisterDeviceTokenIncludeList? _register;

  @override
  Map<String, _i1.Include?> get includes => {'register': _register};

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

  final attach = const DeviceTokenAttachRepository._();

  final attachRow = const DeviceTokenAttachRowRepository._();

  Future<List<DeviceToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTokenTable>? orderByList,
    _i1.Transaction? transaction,
    DeviceTokenInclude? include,
  }) async {
    return session.db.find<DeviceToken>(
      where: where?.call(DeviceToken.t),
      orderBy: orderBy?.call(DeviceToken.t),
      orderByList: orderByList?.call(DeviceToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    DeviceTokenInclude? include,
  }) async {
    return session.db.findFirstRow<DeviceToken>(
      where: where?.call(DeviceToken.t),
      orderBy: orderBy?.call(DeviceToken.t),
      orderByList: orderByList?.call(DeviceToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<DeviceToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    DeviceTokenInclude? include,
  }) async {
    return session.db.findById<DeviceToken>(
      id,
      transaction: transaction,
      include: include,
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

class DeviceTokenAttachRepository {
  const DeviceTokenAttachRepository._();

  Future<void> register(
    _i1.Session session,
    DeviceToken deviceToken,
    List<_i3.RegisterDeviceToken> registerDeviceToken, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.any((e) => e.id == null)) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }
    if (deviceToken.id == null) {
      throw ArgumentError.notNull('deviceToken.id');
    }

    var $registerDeviceToken = registerDeviceToken
        .map((e) => e.copyWith(tokenId: deviceToken.id))
        .toList();
    await session.db.update<_i3.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i3.RegisterDeviceToken.t.tokenId],
      transaction: transaction,
    );
  }
}

class DeviceTokenAttachRowRepository {
  const DeviceTokenAttachRowRepository._();

  Future<void> register(
    _i1.Session session,
    DeviceToken deviceToken,
    _i3.RegisterDeviceToken registerDeviceToken, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.id == null) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }
    if (deviceToken.id == null) {
      throw ArgumentError.notNull('deviceToken.id');
    }

    var $registerDeviceToken =
        registerDeviceToken.copyWith(tokenId: deviceToken.id);
    await session.db.updateRow<_i3.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i3.RegisterDeviceToken.t.tokenId],
      transaction: transaction,
    );
  }
}
