/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'mensajes/notificacion_push.dart' as _i2;
import 'module_class.dart' as _i3;
import 'tokens/token_dispositivo.dart' as _i4;
export 'mensajes/notificacion_push.dart';
export 'module_class.dart';
export 'tokens/token_dispositivo.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.NotificacionPush) {
      return _i2.NotificacionPush.fromJson(data) as T;
    }
    if (t == _i3.ModuleClass) {
      return _i3.ModuleClass.fromJson(data) as T;
    }
    if (t == _i4.TokenDispositivo) {
      return _i4.TokenDispositivo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.NotificacionPush?>()) {
      return (data != null ? _i2.NotificacionPush.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.ModuleClass?>()) {
      return (data != null ? _i3.ModuleClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.TokenDispositivo?>()) {
      return (data != null ? _i4.TokenDispositivo.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.NotificacionPush) {
      return 'NotificacionPush';
    }
    if (data is _i3.ModuleClass) {
      return 'ModuleClass';
    }
    if (data is _i4.TokenDispositivo) {
      return 'TokenDispositivo';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'NotificacionPush') {
      return deserialize<_i2.NotificacionPush>(data['data']);
    }
    if (dataClassName == 'ModuleClass') {
      return deserialize<_i3.ModuleClass>(data['data']);
    }
    if (dataClassName == 'TokenDispositivo') {
      return deserialize<_i4.TokenDispositivo>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
