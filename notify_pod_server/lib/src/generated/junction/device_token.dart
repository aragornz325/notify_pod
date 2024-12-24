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
import '../devices/devices.dart' as _i2;
import '../tokens/token_device.dart' as _i3;

abstract class RegisterDeviceToken
    implements _i1.TableRow, _i1.ProtocolSerialization {
  RegisterDeviceToken._({
    this.id,
    required this.deviceId,
    this.device,
    required this.tokenId,
    this.token,
  });

  factory RegisterDeviceToken({
    int? id,
    required int deviceId,
    _i2.Device? device,
    required int tokenId,
    _i3.DeviceToken? token,
  }) = _RegisterDeviceTokenImpl;

  factory RegisterDeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return RegisterDeviceToken(
      id: jsonSerialization['id'] as int?,
      deviceId: jsonSerialization['deviceId'] as int,
      device: jsonSerialization['device'] == null
          ? null
          : _i2.Device.fromJson(
              (jsonSerialization['device'] as Map<String, dynamic>)),
      tokenId: jsonSerialization['tokenId'] as int,
      token: jsonSerialization['token'] == null
          ? null
          : _i3.DeviceToken.fromJson(
              (jsonSerialization['token'] as Map<String, dynamic>)),
    );
  }

  static final t = RegisterDeviceTokenTable();

  static const db = RegisterDeviceTokenRepository._();

  @override
  int? id;

  int deviceId;

  _i2.Device? device;

  int tokenId;

  _i3.DeviceToken? token;

  @override
  _i1.Table get table => t;

  RegisterDeviceToken copyWith({
    int? id,
    int? deviceId,
    _i2.Device? device,
    int? tokenId,
    _i3.DeviceToken? token,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'deviceId': deviceId,
      if (device != null) 'device': device?.toJson(),
      'tokenId': tokenId,
      if (token != null) 'token': token?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'deviceId': deviceId,
      if (device != null) 'device': device?.toJsonForProtocol(),
      'tokenId': tokenId,
      if (token != null) 'token': token?.toJsonForProtocol(),
    };
  }

  static RegisterDeviceTokenInclude include({
    _i2.DeviceInclude? device,
    _i3.DeviceTokenInclude? token,
  }) {
    return RegisterDeviceTokenInclude._(
      device: device,
      token: token,
    );
  }

  static RegisterDeviceTokenIncludeList includeList({
    _i1.WhereExpressionBuilder<RegisterDeviceTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RegisterDeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterDeviceTokenTable>? orderByList,
    RegisterDeviceTokenInclude? include,
  }) {
    return RegisterDeviceTokenIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RegisterDeviceToken.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RegisterDeviceToken.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RegisterDeviceTokenImpl extends RegisterDeviceToken {
  _RegisterDeviceTokenImpl({
    int? id,
    required int deviceId,
    _i2.Device? device,
    required int tokenId,
    _i3.DeviceToken? token,
  }) : super._(
          id: id,
          deviceId: deviceId,
          device: device,
          tokenId: tokenId,
          token: token,
        );

  @override
  RegisterDeviceToken copyWith({
    Object? id = _Undefined,
    int? deviceId,
    Object? device = _Undefined,
    int? tokenId,
    Object? token = _Undefined,
  }) {
    return RegisterDeviceToken(
      id: id is int? ? id : this.id,
      deviceId: deviceId ?? this.deviceId,
      device: device is _i2.Device? ? device : this.device?.copyWith(),
      tokenId: tokenId ?? this.tokenId,
      token: token is _i3.DeviceToken? ? token : this.token?.copyWith(),
    );
  }
}

class RegisterDeviceTokenTable extends _i1.Table {
  RegisterDeviceTokenTable({super.tableRelation})
      : super(tableName: 'serverpod_device_token_register') {
    deviceId = _i1.ColumnInt(
      'deviceId',
      this,
    );
    tokenId = _i1.ColumnInt(
      'tokenId',
      this,
    );
  }

  late final _i1.ColumnInt deviceId;

  _i2.DeviceTable? _device;

  late final _i1.ColumnInt tokenId;

  _i3.DeviceTokenTable? _token;

  _i2.DeviceTable get device {
    if (_device != null) return _device!;
    _device = _i1.createRelationTable(
      relationFieldName: 'device',
      field: RegisterDeviceToken.t.deviceId,
      foreignField: _i2.Device.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DeviceTable(tableRelation: foreignTableRelation),
    );
    return _device!;
  }

  _i3.DeviceTokenTable get token {
    if (_token != null) return _token!;
    _token = _i1.createRelationTable(
      relationFieldName: 'token',
      field: RegisterDeviceToken.t.tokenId,
      foreignField: _i3.DeviceToken.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.DeviceTokenTable(tableRelation: foreignTableRelation),
    );
    return _token!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        deviceId,
        tokenId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'device') {
      return device;
    }
    if (relationField == 'token') {
      return token;
    }
    return null;
  }
}

class RegisterDeviceTokenInclude extends _i1.IncludeObject {
  RegisterDeviceTokenInclude._({
    _i2.DeviceInclude? device,
    _i3.DeviceTokenInclude? token,
  }) {
    _device = device;
    _token = token;
  }

  _i2.DeviceInclude? _device;

  _i3.DeviceTokenInclude? _token;

  @override
  Map<String, _i1.Include?> get includes => {
        'device': _device,
        'token': _token,
      };

  @override
  _i1.Table get table => RegisterDeviceToken.t;
}

class RegisterDeviceTokenIncludeList extends _i1.IncludeList {
  RegisterDeviceTokenIncludeList._({
    _i1.WhereExpressionBuilder<RegisterDeviceTokenTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RegisterDeviceToken.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RegisterDeviceToken.t;
}

class RegisterDeviceTokenRepository {
  const RegisterDeviceTokenRepository._();

  final attachRow = const RegisterDeviceTokenAttachRowRepository._();

  Future<List<RegisterDeviceToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterDeviceTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RegisterDeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterDeviceTokenTable>? orderByList,
    _i1.Transaction? transaction,
    RegisterDeviceTokenInclude? include,
  }) async {
    return session.db.find<RegisterDeviceToken>(
      where: where?.call(RegisterDeviceToken.t),
      orderBy: orderBy?.call(RegisterDeviceToken.t),
      orderByList: orderByList?.call(RegisterDeviceToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<RegisterDeviceToken?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterDeviceTokenTable>? where,
    int? offset,
    _i1.OrderByBuilder<RegisterDeviceTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterDeviceTokenTable>? orderByList,
    _i1.Transaction? transaction,
    RegisterDeviceTokenInclude? include,
  }) async {
    return session.db.findFirstRow<RegisterDeviceToken>(
      where: where?.call(RegisterDeviceToken.t),
      orderBy: orderBy?.call(RegisterDeviceToken.t),
      orderByList: orderByList?.call(RegisterDeviceToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<RegisterDeviceToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RegisterDeviceTokenInclude? include,
  }) async {
    return session.db.findById<RegisterDeviceToken>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<RegisterDeviceToken>> insert(
    _i1.Session session,
    List<RegisterDeviceToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<RegisterDeviceToken>(
      rows,
      transaction: transaction,
    );
  }

  Future<RegisterDeviceToken> insertRow(
    _i1.Session session,
    RegisterDeviceToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RegisterDeviceToken>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RegisterDeviceToken>> update(
    _i1.Session session,
    List<RegisterDeviceToken> rows, {
    _i1.ColumnSelections<RegisterDeviceTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RegisterDeviceToken>(
      rows,
      columns: columns?.call(RegisterDeviceToken.t),
      transaction: transaction,
    );
  }

  Future<RegisterDeviceToken> updateRow(
    _i1.Session session,
    RegisterDeviceToken row, {
    _i1.ColumnSelections<RegisterDeviceTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RegisterDeviceToken>(
      row,
      columns: columns?.call(RegisterDeviceToken.t),
      transaction: transaction,
    );
  }

  Future<List<RegisterDeviceToken>> delete(
    _i1.Session session,
    List<RegisterDeviceToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RegisterDeviceToken>(
      rows,
      transaction: transaction,
    );
  }

  Future<RegisterDeviceToken> deleteRow(
    _i1.Session session,
    RegisterDeviceToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RegisterDeviceToken>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RegisterDeviceToken>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RegisterDeviceTokenTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RegisterDeviceToken>(
      where: where(RegisterDeviceToken.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterDeviceTokenTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RegisterDeviceToken>(
      where: where?.call(RegisterDeviceToken.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RegisterDeviceTokenAttachRowRepository {
  const RegisterDeviceTokenAttachRowRepository._();

  Future<void> device(
    _i1.Session session,
    RegisterDeviceToken registerDeviceToken,
    _i2.Device device, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.id == null) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }
    if (device.id == null) {
      throw ArgumentError.notNull('device.id');
    }

    var $registerDeviceToken =
        registerDeviceToken.copyWith(deviceId: device.id);
    await session.db.updateRow<RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [RegisterDeviceToken.t.deviceId],
      transaction: transaction,
    );
  }

  Future<void> token(
    _i1.Session session,
    RegisterDeviceToken registerDeviceToken,
    _i3.DeviceToken token, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.id == null) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }
    if (token.id == null) {
      throw ArgumentError.notNull('token.id');
    }

    var $registerDeviceToken = registerDeviceToken.copyWith(tokenId: token.id);
    await session.db.updateRow<RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [RegisterDeviceToken.t.tokenId],
      transaction: transaction,
    );
  }
}
