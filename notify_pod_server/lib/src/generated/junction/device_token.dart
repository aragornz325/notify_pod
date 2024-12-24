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

abstract class Register implements _i1.TableRow, _i1.ProtocolSerialization {
  Register._({
    this.id,
    required this.deviceId,
    this.device,
    required this.tokenId,
    this.token,
  });

  factory Register({
    int? id,
    required int deviceId,
    _i2.Device? device,
    required int tokenId,
    _i3.DeviceToken? token,
  }) = _RegisterImpl;

  factory Register.fromJson(Map<String, dynamic> jsonSerialization) {
    return Register(
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

  static final t = RegisterTable();

  static const db = RegisterRepository._();

  @override
  int? id;

  int deviceId;

  _i2.Device? device;

  int tokenId;

  _i3.DeviceToken? token;

  @override
  _i1.Table get table => t;

  Register copyWith({
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

  static RegisterInclude include({
    _i2.DeviceInclude? device,
    _i3.DeviceTokenInclude? token,
  }) {
    return RegisterInclude._(
      device: device,
      token: token,
    );
  }

  static RegisterIncludeList includeList({
    _i1.WhereExpressionBuilder<RegisterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RegisterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterTable>? orderByList,
    RegisterInclude? include,
  }) {
    return RegisterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Register.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Register.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RegisterImpl extends Register {
  _RegisterImpl({
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
  Register copyWith({
    Object? id = _Undefined,
    int? deviceId,
    Object? device = _Undefined,
    int? tokenId,
    Object? token = _Undefined,
  }) {
    return Register(
      id: id is int? ? id : this.id,
      deviceId: deviceId ?? this.deviceId,
      device: device is _i2.Device? ? device : this.device?.copyWith(),
      tokenId: tokenId ?? this.tokenId,
      token: token is _i3.DeviceToken? ? token : this.token?.copyWith(),
    );
  }
}

class RegisterTable extends _i1.Table {
  RegisterTable({super.tableRelation})
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
      field: Register.t.deviceId,
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
      field: Register.t.tokenId,
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

class RegisterInclude extends _i1.IncludeObject {
  RegisterInclude._({
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
  _i1.Table get table => Register.t;
}

class RegisterIncludeList extends _i1.IncludeList {
  RegisterIncludeList._({
    _i1.WhereExpressionBuilder<RegisterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Register.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Register.t;
}

class RegisterRepository {
  const RegisterRepository._();

  final attachRow = const RegisterAttachRowRepository._();

  Future<List<Register>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RegisterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterTable>? orderByList,
    _i1.Transaction? transaction,
    RegisterInclude? include,
  }) async {
    return session.db.find<Register>(
      where: where?.call(Register.t),
      orderBy: orderBy?.call(Register.t),
      orderByList: orderByList?.call(Register.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Register?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterTable>? where,
    int? offset,
    _i1.OrderByBuilder<RegisterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RegisterTable>? orderByList,
    _i1.Transaction? transaction,
    RegisterInclude? include,
  }) async {
    return session.db.findFirstRow<Register>(
      where: where?.call(Register.t),
      orderBy: orderBy?.call(Register.t),
      orderByList: orderByList?.call(Register.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Register?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RegisterInclude? include,
  }) async {
    return session.db.findById<Register>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Register>> insert(
    _i1.Session session,
    List<Register> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Register>(
      rows,
      transaction: transaction,
    );
  }

  Future<Register> insertRow(
    _i1.Session session,
    Register row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Register>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Register>> update(
    _i1.Session session,
    List<Register> rows, {
    _i1.ColumnSelections<RegisterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Register>(
      rows,
      columns: columns?.call(Register.t),
      transaction: transaction,
    );
  }

  Future<Register> updateRow(
    _i1.Session session,
    Register row, {
    _i1.ColumnSelections<RegisterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Register>(
      row,
      columns: columns?.call(Register.t),
      transaction: transaction,
    );
  }

  Future<List<Register>> delete(
    _i1.Session session,
    List<Register> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Register>(
      rows,
      transaction: transaction,
    );
  }

  Future<Register> deleteRow(
    _i1.Session session,
    Register row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Register>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Register>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RegisterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Register>(
      where: where(Register.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RegisterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Register>(
      where: where?.call(Register.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RegisterAttachRowRepository {
  const RegisterAttachRowRepository._();

  Future<void> device(
    _i1.Session session,
    Register register,
    _i2.Device device, {
    _i1.Transaction? transaction,
  }) async {
    if (register.id == null) {
      throw ArgumentError.notNull('register.id');
    }
    if (device.id == null) {
      throw ArgumentError.notNull('device.id');
    }

    var $register = register.copyWith(deviceId: device.id);
    await session.db.updateRow<Register>(
      $register,
      columns: [Register.t.deviceId],
      transaction: transaction,
    );
  }

  Future<void> token(
    _i1.Session session,
    Register register,
    _i3.DeviceToken token, {
    _i1.Transaction? transaction,
  }) async {
    if (register.id == null) {
      throw ArgumentError.notNull('register.id');
    }
    if (token.id == null) {
      throw ArgumentError.notNull('token.id');
    }

    var $register = register.copyWith(tokenId: token.id);
    await session.db.updateRow<Register>(
      $register,
      columns: [Register.t.tokenId],
      transaction: transaction,
    );
  }
}
