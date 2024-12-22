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
import 'enums/notify_environment.dart' as _i2;
import 'exceptions/notify_pod_exception.dart' as _i3;
import 'mensajes/notificacion_push.dart' as _i4;
import 'module_class.dart' as _i5;
import 'tokens/token_dispositivo.dart' as _i6;
export 'enums/notify_environment.dart';
export 'exceptions/notify_pod_exception.dart';
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
    if (t == _i2.NotifyEnvironment) {
      return _i2.NotifyEnvironment.fromJson(data) as T;
    }
    if (t == _i3.NotifyPodException) {
      return _i3.NotifyPodException.fromJson(data) as T;
    }
    if (t == _i4.NotificacionPush) {
      return _i4.NotificacionPush.fromJson(data) as T;
    }
    if (t == _i5.ModuleClass) {
      return _i5.ModuleClass.fromJson(data) as T;
    }
    if (t == _i6.TokenDispositivo) {
      return _i6.TokenDispositivo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.NotifyEnvironment?>()) {
      return (data != null ? _i2.NotifyEnvironment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.NotifyPodException?>()) {
      return (data != null ? _i3.NotifyPodException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.NotificacionPush?>()) {
      return (data != null ? _i4.NotificacionPush.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.ModuleClass?>()) {
      return (data != null ? _i5.ModuleClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.TokenDispositivo?>()) {
      return (data != null ? _i6.TokenDispositivo.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.NotifyEnvironment) {
      return 'NotifyEnvironment';
    }
    if (data is _i3.NotifyPodException) {
      return 'NotifyPodException';
    }
    if (data is _i4.NotificacionPush) {
      return 'NotificacionPush';
    }
    if (data is _i5.ModuleClass) {
      return 'ModuleClass';
    }
    if (data is _i6.TokenDispositivo) {
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
    if (dataClassName == 'NotifyEnvironment') {
      return deserialize<_i2.NotifyEnvironment>(data['data']);
    }
    if (dataClassName == 'NotifyPodException') {
      return deserialize<_i3.NotifyPodException>(data['data']);
    }
    if (dataClassName == 'NotificacionPush') {
      return deserialize<_i4.NotificacionPush>(data['data']);
    }
    if (dataClassName == 'ModuleClass') {
      return deserialize<_i5.ModuleClass>(data['data']);
    }
    if (dataClassName == 'TokenDispositivo') {
      return deserialize<_i6.TokenDispositivo>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
