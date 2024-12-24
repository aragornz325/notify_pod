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
import '../logs/notifications_logs.dart' as _i3;
import '../junction/device_token.dart' as _i4;

abstract class Device implements _i1.TableRow, _i1.ProtocolSerialization {
  Device._({
    this.id,
    required this.userId,
    required this.idDevice,
    required this.type,
    this.notificationsLogs,
    required this.createdAt,
    required this.updatedAt,
    this.register,
  });

  factory Device({
    int? id,
    required String userId,
    required String idDevice,
    required _i2.DevicesType type,
    List<_i3.NotificationsLogs>? notificationsLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i4.RegisterDeviceToken>? register,
  }) = _DeviceImpl;

  factory Device.fromJson(Map<String, dynamic> jsonSerialization) {
    return Device(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as String,
      idDevice: jsonSerialization['idDevice'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
      notificationsLogs: (jsonSerialization['notificationsLogs'] as List?)
          ?.map((e) =>
              _i3.NotificationsLogs.fromJson((e as Map<String, dynamic>)))
          .toList(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      register: (jsonSerialization['register'] as List?)
          ?.map((e) =>
              _i4.RegisterDeviceToken.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = DeviceTable();

  static const db = DeviceRepository._();

  @override
  int? id;

  String userId;

  String idDevice;

  _i2.DevicesType type;

  List<_i3.NotificationsLogs>? notificationsLogs;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i4.RegisterDeviceToken>? register;

  @override
  _i1.Table get table => t;

  Device copyWith({
    int? id,
    String? userId,
    String? idDevice,
    _i2.DevicesType? type,
    List<_i3.NotificationsLogs>? notificationsLogs,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i4.RegisterDeviceToken>? register,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'idDevice': idDevice,
      'type': type.toJson(),
      if (notificationsLogs != null)
        'notificationsLogs':
            notificationsLogs?.toJson(valueToJson: (v) => v.toJson()),
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
      'userId': userId,
      'idDevice': idDevice,
      'type': type.toJson(),
      if (notificationsLogs != null)
        'notificationsLogs': notificationsLogs?.toJson(
            valueToJson: (v) => v.toJsonForProtocol()),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (register != null)
        'register': register?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static DeviceInclude include({
    _i3.NotificationsLogsIncludeList? notificationsLogs,
    _i4.RegisterDeviceTokenIncludeList? register,
  }) {
    return DeviceInclude._(
      notificationsLogs: notificationsLogs,
      register: register,
    );
  }

  static DeviceIncludeList includeList({
    _i1.WhereExpressionBuilder<DeviceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTable>? orderByList,
    DeviceInclude? include,
  }) {
    return DeviceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Device.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Device.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DeviceImpl extends Device {
  _DeviceImpl({
    int? id,
    required String userId,
    required String idDevice,
    required _i2.DevicesType type,
    List<_i3.NotificationsLogs>? notificationsLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i4.RegisterDeviceToken>? register,
  }) : super._(
          id: id,
          userId: userId,
          idDevice: idDevice,
          type: type,
          notificationsLogs: notificationsLogs,
          createdAt: createdAt,
          updatedAt: updatedAt,
          register: register,
        );

  @override
  Device copyWith({
    Object? id = _Undefined,
    String? userId,
    String? idDevice,
    _i2.DevicesType? type,
    Object? notificationsLogs = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? register = _Undefined,
  }) {
    return Device(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      idDevice: idDevice ?? this.idDevice,
      type: type ?? this.type,
      notificationsLogs: notificationsLogs is List<_i3.NotificationsLogs>?
          ? notificationsLogs
          : this.notificationsLogs?.map((e0) => e0.copyWith()).toList(),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      register: register is List<_i4.RegisterDeviceToken>?
          ? register
          : this.register?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class DeviceTable extends _i1.Table {
  DeviceTable({super.tableRelation})
      : super(tableName: 'serverpod_devices_notify_pod') {
    userId = _i1.ColumnString(
      'userId',
      this,
    );
    idDevice = _i1.ColumnString(
      'idDevice',
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

  late final _i1.ColumnString userId;

  late final _i1.ColumnString idDevice;

  late final _i1.ColumnEnum<_i2.DevicesType> type;

  _i3.NotificationsLogsTable? ___notificationsLogs;

  _i1.ManyRelation<_i3.NotificationsLogsTable>? _notificationsLogs;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i4.RegisterDeviceTokenTable? ___register;

  _i1.ManyRelation<_i4.RegisterDeviceTokenTable>? _register;

  _i3.NotificationsLogsTable get __notificationsLogs {
    if (___notificationsLogs != null) return ___notificationsLogs!;
    ___notificationsLogs = _i1.createRelationTable(
      relationFieldName: '__notificationsLogs',
      field: Device.t.id,
      foreignField: _i3.NotificationsLogs.t.deviceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.NotificationsLogsTable(tableRelation: foreignTableRelation),
    );
    return ___notificationsLogs!;
  }

  _i4.RegisterDeviceTokenTable get __register {
    if (___register != null) return ___register!;
    ___register = _i1.createRelationTable(
      relationFieldName: '__register',
      field: Device.t.id,
      foreignField: _i4.RegisterDeviceToken.t.deviceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.RegisterDeviceTokenTable(tableRelation: foreignTableRelation),
    );
    return ___register!;
  }

  _i1.ManyRelation<_i3.NotificationsLogsTable> get notificationsLogs {
    if (_notificationsLogs != null) return _notificationsLogs!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'notificationsLogs',
      field: Device.t.id,
      foreignField: _i3.NotificationsLogs.t.deviceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.NotificationsLogsTable(tableRelation: foreignTableRelation),
    );
    _notificationsLogs = _i1.ManyRelation<_i3.NotificationsLogsTable>(
      tableWithRelations: relationTable,
      table: _i3.NotificationsLogsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _notificationsLogs!;
  }

  _i1.ManyRelation<_i4.RegisterDeviceTokenTable> get register {
    if (_register != null) return _register!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'register',
      field: Device.t.id,
      foreignField: _i4.RegisterDeviceToken.t.deviceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.RegisterDeviceTokenTable(tableRelation: foreignTableRelation),
    );
    _register = _i1.ManyRelation<_i4.RegisterDeviceTokenTable>(
      tableWithRelations: relationTable,
      table: _i4.RegisterDeviceTokenTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _register!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        idDevice,
        type,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'notificationsLogs') {
      return __notificationsLogs;
    }
    if (relationField == 'register') {
      return __register;
    }
    return null;
  }
}

class DeviceInclude extends _i1.IncludeObject {
  DeviceInclude._({
    _i3.NotificationsLogsIncludeList? notificationsLogs,
    _i4.RegisterDeviceTokenIncludeList? register,
  }) {
    _notificationsLogs = notificationsLogs;
    _register = register;
  }

  _i3.NotificationsLogsIncludeList? _notificationsLogs;

  _i4.RegisterDeviceTokenIncludeList? _register;

  @override
  Map<String, _i1.Include?> get includes => {
        'notificationsLogs': _notificationsLogs,
        'register': _register,
      };

  @override
  _i1.Table get table => Device.t;
}

class DeviceIncludeList extends _i1.IncludeList {
  DeviceIncludeList._({
    _i1.WhereExpressionBuilder<DeviceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Device.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Device.t;
}

class DeviceRepository {
  const DeviceRepository._();

  final attach = const DeviceAttachRepository._();

  final attachRow = const DeviceAttachRowRepository._();

  final detach = const DeviceDetachRepository._();

  final detachRow = const DeviceDetachRowRepository._();

  Future<List<Device>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTable>? orderByList,
    _i1.Transaction? transaction,
    DeviceInclude? include,
  }) async {
    return session.db.find<Device>(
      where: where?.call(Device.t),
      orderBy: orderBy?.call(Device.t),
      orderByList: orderByList?.call(Device.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Device?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTable>? where,
    int? offset,
    _i1.OrderByBuilder<DeviceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeviceTable>? orderByList,
    _i1.Transaction? transaction,
    DeviceInclude? include,
  }) async {
    return session.db.findFirstRow<Device>(
      where: where?.call(Device.t),
      orderBy: orderBy?.call(Device.t),
      orderByList: orderByList?.call(Device.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Device?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    DeviceInclude? include,
  }) async {
    return session.db.findById<Device>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Device>> insert(
    _i1.Session session,
    List<Device> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Device>(
      rows,
      transaction: transaction,
    );
  }

  Future<Device> insertRow(
    _i1.Session session,
    Device row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Device>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Device>> update(
    _i1.Session session,
    List<Device> rows, {
    _i1.ColumnSelections<DeviceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Device>(
      rows,
      columns: columns?.call(Device.t),
      transaction: transaction,
    );
  }

  Future<Device> updateRow(
    _i1.Session session,
    Device row, {
    _i1.ColumnSelections<DeviceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Device>(
      row,
      columns: columns?.call(Device.t),
      transaction: transaction,
    );
  }

  Future<List<Device>> delete(
    _i1.Session session,
    List<Device> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Device>(
      rows,
      transaction: transaction,
    );
  }

  Future<Device> deleteRow(
    _i1.Session session,
    Device row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Device>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Device>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DeviceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Device>(
      where: where(Device.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeviceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Device>(
      where: where?.call(Device.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class DeviceAttachRepository {
  const DeviceAttachRepository._();

  Future<void> notificationsLogs(
    _i1.Session session,
    Device device,
    List<_i3.NotificationsLogs> notificationsLogs, {
    _i1.Transaction? transaction,
  }) async {
    if (notificationsLogs.any((e) => e.id == null)) {
      throw ArgumentError.notNull('notificationsLogs.id');
    }
    if (device.id == null) {
      throw ArgumentError.notNull('device.id');
    }

    var $notificationsLogs =
        notificationsLogs.map((e) => e.copyWith(deviceId: device.id)).toList();
    await session.db.update<_i3.NotificationsLogs>(
      $notificationsLogs,
      columns: [_i3.NotificationsLogs.t.deviceId],
      transaction: transaction,
    );
  }

  Future<void> register(
    _i1.Session session,
    Device device,
    List<_i4.RegisterDeviceToken> registerDeviceToken, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.any((e) => e.id == null)) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }
    if (device.id == null) {
      throw ArgumentError.notNull('device.id');
    }

    var $registerDeviceToken = registerDeviceToken
        .map((e) => e.copyWith(deviceId: device.id))
        .toList();
    await session.db.update<_i4.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i4.RegisterDeviceToken.t.deviceId],
      transaction: transaction,
    );
  }
}

class DeviceAttachRowRepository {
  const DeviceAttachRowRepository._();

  Future<void> notificationsLogs(
    _i1.Session session,
    Device device,
    _i3.NotificationsLogs notificationsLogs, {
    _i1.Transaction? transaction,
  }) async {
    if (notificationsLogs.id == null) {
      throw ArgumentError.notNull('notificationsLogs.id');
    }
    if (device.id == null) {
      throw ArgumentError.notNull('device.id');
    }

    var $notificationsLogs = notificationsLogs.copyWith(deviceId: device.id);
    await session.db.updateRow<_i3.NotificationsLogs>(
      $notificationsLogs,
      columns: [_i3.NotificationsLogs.t.deviceId],
      transaction: transaction,
    );
  }

  Future<void> register(
    _i1.Session session,
    Device device,
    _i4.RegisterDeviceToken registerDeviceToken, {
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
    await session.db.updateRow<_i4.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i4.RegisterDeviceToken.t.deviceId],
      transaction: transaction,
    );
  }
}

class DeviceDetachRepository {
  const DeviceDetachRepository._();

  Future<void> register(
    _i1.Session session,
    List<_i4.RegisterDeviceToken> registerDeviceToken, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.any((e) => e.id == null)) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }

    var $registerDeviceToken =
        registerDeviceToken.map((e) => e.copyWith(deviceId: null)).toList();
    await session.db.update<_i4.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i4.RegisterDeviceToken.t.deviceId],
      transaction: transaction,
    );
  }
}

class DeviceDetachRowRepository {
  const DeviceDetachRowRepository._();

  Future<void> register(
    _i1.Session session,
    _i4.RegisterDeviceToken registerDeviceToken, {
    _i1.Transaction? transaction,
  }) async {
    if (registerDeviceToken.id == null) {
      throw ArgumentError.notNull('registerDeviceToken.id');
    }

    var $registerDeviceToken = registerDeviceToken.copyWith(deviceId: null);
    await session.db.updateRow<_i4.RegisterDeviceToken>(
      $registerDeviceToken,
      columns: [_i4.RegisterDeviceToken.t.deviceId],
      transaction: transaction,
    );
  }
}
