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
import 'enums/notify_environment.dart' as _i3;
import 'exceptions/notify_pod_exception.dart' as _i4;
import 'mensajes/notificacion_push.dart' as _i5;
import 'module_class.dart' as _i6;
import 'tokens/token_dispositivo.dart' as _i7;
export 'enums/notify_environment.dart';
export 'exceptions/notify_pod_exception.dart';
export 'mensajes/notificacion_push.dart';
export 'module_class.dart';
export 'tokens/token_dispositivo.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'serverpod_notificacion_push',
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
              'nextval(\'serverpod_notificacion_push_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'idCliente',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'mensaje',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'idDispositivo',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'enviadoEl',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'leidoEl',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_notificacion_push_pkey',
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
      name: 'serverpod_token_dispositivo',
      dartName: 'TokenDispositivo',
      schema: 'public',
      module: 'notify_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_token_dispositivo_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'token',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'idCliente',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_token_dispositivo_pkey',
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
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.NotifyEnvironment) {
      return _i3.NotifyEnvironment.fromJson(data) as T;
    }
    if (t == _i4.NotifyPodException) {
      return _i4.NotifyPodException.fromJson(data) as T;
    }
    if (t == _i5.NotificacionPush) {
      return _i5.NotificacionPush.fromJson(data) as T;
    }
    if (t == _i6.ModuleClass) {
      return _i6.ModuleClass.fromJson(data) as T;
    }
    if (t == _i7.TokenDispositivo) {
      return _i7.TokenDispositivo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.NotifyEnvironment?>()) {
      return (data != null ? _i3.NotifyEnvironment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.NotifyPodException?>()) {
      return (data != null ? _i4.NotifyPodException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.NotificacionPush?>()) {
      return (data != null ? _i5.NotificacionPush.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.ModuleClass?>()) {
      return (data != null ? _i6.ModuleClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.TokenDispositivo?>()) {
      return (data != null ? _i7.TokenDispositivo.fromJson(data) : null) as T;
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
    if (data is _i3.NotifyEnvironment) {
      return 'NotifyEnvironment';
    }
    if (data is _i4.NotifyPodException) {
      return 'NotifyPodException';
    }
    if (data is _i5.NotificacionPush) {
      return 'NotificacionPush';
    }
    if (data is _i6.ModuleClass) {
      return 'ModuleClass';
    }
    if (data is _i7.TokenDispositivo) {
      return 'TokenDispositivo';
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
    if (dataClassName == 'NotifyEnvironment') {
      return deserialize<_i3.NotifyEnvironment>(data['data']);
    }
    if (dataClassName == 'NotifyPodException') {
      return deserialize<_i4.NotifyPodException>(data['data']);
    }
    if (dataClassName == 'NotificacionPush') {
      return deserialize<_i5.NotificacionPush>(data['data']);
    }
    if (dataClassName == 'ModuleClass') {
      return deserialize<_i6.ModuleClass>(data['data']);
    }
    if (dataClassName == 'TokenDispositivo') {
      return deserialize<_i7.TokenDispositivo>(data['data']);
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
      case _i5.NotificacionPush:
        return _i5.NotificacionPush.t;
      case _i7.TokenDispositivo:
        return _i7.TokenDispositivo.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'notify_pod';
}
