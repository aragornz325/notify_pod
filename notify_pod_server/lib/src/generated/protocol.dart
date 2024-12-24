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
import 'package:serverpod/protocol.dart' as _i2;
import 'devices/devices.dart' as _i3;
import 'enums/devices_type.dart' as _i4;
import 'enums/notification_status.dart' as _i5;
import 'enums/notify_environment.dart' as _i6;
import 'exceptions/notify_pod_exception.dart' as _i7;
import 'junction/device_token.dart' as _i8;
import 'logs/notifications_logs.dart' as _i9;
import 'message/notificacion_push.dart' as _i10;
import 'module_class.dart' as _i11;
import 'tokens/token_device.dart' as _i12;
export 'devices/devices.dart';
export 'enums/devices_type.dart';
export 'enums/notification_status.dart';
export 'enums/notify_environment.dart';
export 'exceptions/notify_pod_exception.dart';
export 'junction/device_token.dart';
export 'logs/notifications_logs.dart';
export 'message/notificacion_push.dart';
export 'module_class.dart';
export 'tokens/token_device.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'serverpod_device_token',
      dartName: 'DeviceToken',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'serverpod_device_token_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'token',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:DevicesType',
        ),
        _i2.ColumnDefinition(
          name: 'deviceId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_device_token_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_device_token_register',
      dartName: 'Register',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_device_token_register_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'deviceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'tokenId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'serverpod_device_token_register_fk_0',
          columns: ['deviceId'],
          referenceTable: 'serverpod_devices_notify_pod',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'serverpod_device_token_register_fk_1',
          columns: ['tokenId'],
          referenceTable: 'serverpod_device_token',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_device_token_register_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'devices_token_index',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'deviceId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'tokenId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_devices_notify_pod',
      dartName: 'Device',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_devices_notify_pod_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'deviceId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'token',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:DevicesType',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_devices_notify_pod_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'idx_devices_userId',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_notifications_logs',
      dartName: 'NotificationsLogs',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_notifications_logs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'notificationId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:NotificationStatus',
        ),
        _i2.ColumnDefinition(
          name: 'error',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'deviceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'attemptAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'serverpod_notifications_logs_fk_0',
          columns: ['deviceId'],
          referenceTable: 'serverpod_devices_notify_pod',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_notifications_logs_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'idx_logs_notificationId',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'notificationId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'idx_logs_deviceId',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'deviceId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_push_notificacion',
      dartName: 'NotificacionPush',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_push_notificacion_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'deviceId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'sendAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:NotificationStatus',
        ),
        _i2.ColumnDefinition(
          name: 'readAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_push_notificacion_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'idx_notifications_userId',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'idx_notifications_status',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'status',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Device) {
      return _i3.Device.fromJson(data) as T;
    }
    if (t == _i4.DevicesType) {
      return _i4.DevicesType.fromJson(data) as T;
    }
    if (t == _i5.NotificationStatus) {
      return _i5.NotificationStatus.fromJson(data) as T;
    }
    if (t == _i6.NotifyEnvironment) {
      return _i6.NotifyEnvironment.fromJson(data) as T;
    }
    if (t == _i7.NotifyPodException) {
      return _i7.NotifyPodException.fromJson(data) as T;
    }
    if (t == _i8.Register) {
      return _i8.Register.fromJson(data) as T;
    }
    if (t == _i9.NotificationsLogs) {
      return _i9.NotificationsLogs.fromJson(data) as T;
    }
    if (t == _i10.NotificacionPush) {
      return _i10.NotificacionPush.fromJson(data) as T;
    }
    if (t == _i11.ModuleClass) {
      return _i11.ModuleClass.fromJson(data) as T;
    }
    if (t == _i12.DeviceToken) {
      return _i12.DeviceToken.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Device?>()) {
      return (data != null ? _i3.Device.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.DevicesType?>()) {
      return (data != null ? _i4.DevicesType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.NotificationStatus?>()) {
      return (data != null ? _i5.NotificationStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.NotifyEnvironment?>()) {
      return (data != null ? _i6.NotifyEnvironment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.NotifyPodException?>()) {
      return (data != null ? _i7.NotifyPodException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Register?>()) {
      return (data != null ? _i8.Register.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.NotificationsLogs?>()) {
      return (data != null ? _i9.NotificationsLogs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.NotificacionPush?>()) {
      return (data != null ? _i10.NotificacionPush.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ModuleClass?>()) {
      return (data != null ? _i11.ModuleClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.DeviceToken?>()) {
      return (data != null ? _i12.DeviceToken.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i9.NotificationsLogs>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.NotificationsLogs>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Register>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Register>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Register>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Register>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.Device) {
      return 'Device';
    }
    if (data is _i4.DevicesType) {
      return 'DevicesType';
    }
    if (data is _i5.NotificationStatus) {
      return 'NotificationStatus';
    }
    if (data is _i6.NotifyEnvironment) {
      return 'NotifyEnvironment';
    }
    if (data is _i7.NotifyPodException) {
      return 'NotifyPodException';
    }
    if (data is _i8.Register) {
      return 'Register';
    }
    if (data is _i9.NotificationsLogs) {
      return 'NotificationsLogs';
    }
    if (data is _i10.NotificacionPush) {
      return 'NotificacionPush';
    }
    if (data is _i11.ModuleClass) {
      return 'ModuleClass';
    }
    if (data is _i12.DeviceToken) {
      return 'DeviceToken';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Device') {
      return deserialize<_i3.Device>(data['data']);
    }
    if (dataClassName == 'DevicesType') {
      return deserialize<_i4.DevicesType>(data['data']);
    }
    if (dataClassName == 'NotificationStatus') {
      return deserialize<_i5.NotificationStatus>(data['data']);
    }
    if (dataClassName == 'NotifyEnvironment') {
      return deserialize<_i6.NotifyEnvironment>(data['data']);
    }
    if (dataClassName == 'NotifyPodException') {
      return deserialize<_i7.NotifyPodException>(data['data']);
    }
    if (dataClassName == 'Register') {
      return deserialize<_i8.Register>(data['data']);
    }
    if (dataClassName == 'NotificationsLogs') {
      return deserialize<_i9.NotificationsLogs>(data['data']);
    }
    if (dataClassName == 'NotificacionPush') {
      return deserialize<_i10.NotificacionPush>(data['data']);
    }
    if (dataClassName == 'ModuleClass') {
      return deserialize<_i11.ModuleClass>(data['data']);
    }
    if (dataClassName == 'DeviceToken') {
      return deserialize<_i12.DeviceToken>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Device:
        return _i3.Device.t;
      case _i8.Register:
        return _i8.Register.t;
      case _i9.NotificationsLogs:
        return _i9.NotificationsLogs.t;
      case _i10.NotificacionPush:
        return _i10.NotificacionPush.t;
      case _i12.DeviceToken:
        return _i12.DeviceToken.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'notify_pod';
}
