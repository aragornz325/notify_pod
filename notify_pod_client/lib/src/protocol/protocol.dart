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
import 'devices/devices.dart' as _i2;
import 'enums/devices_type.dart' as _i3;
import 'enums/notification_status.dart' as _i4;
import 'enums/notify_environment.dart' as _i5;
import 'exceptions/notify_pod_exception.dart' as _i6;
import 'junction/device_token.dart' as _i7;
import 'logs/notifications_logs.dart' as _i8;
import 'message/notificacion_push.dart' as _i9;
import 'module_class.dart' as _i10;
import 'tokens/token_device.dart' as _i11;
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
    if (t == _i2.Device) {
      return _i2.Device.fromJson(data) as T;
    }
    if (t == _i3.DevicesType) {
      return _i3.DevicesType.fromJson(data) as T;
    }
    if (t == _i4.NotificationStatus) {
      return _i4.NotificationStatus.fromJson(data) as T;
    }
    if (t == _i5.NotifyEnvironment) {
      return _i5.NotifyEnvironment.fromJson(data) as T;
    }
    if (t == _i6.NotifyPodException) {
      return _i6.NotifyPodException.fromJson(data) as T;
    }
    if (t == _i7.RegisterDeviceToken) {
      return _i7.RegisterDeviceToken.fromJson(data) as T;
    }
    if (t == _i8.NotificationsLogs) {
      return _i8.NotificationsLogs.fromJson(data) as T;
    }
    if (t == _i9.NotificacionPush) {
      return _i9.NotificacionPush.fromJson(data) as T;
    }
    if (t == _i10.ModuleClass) {
      return _i10.ModuleClass.fromJson(data) as T;
    }
    if (t == _i11.DeviceToken) {
      return _i11.DeviceToken.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Device?>()) {
      return (data != null ? _i2.Device.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.DevicesType?>()) {
      return (data != null ? _i3.DevicesType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.NotificationStatus?>()) {
      return (data != null ? _i4.NotificationStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.NotifyEnvironment?>()) {
      return (data != null ? _i5.NotifyEnvironment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.NotifyPodException?>()) {
      return (data != null ? _i6.NotifyPodException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.RegisterDeviceToken?>()) {
      return (data != null ? _i7.RegisterDeviceToken.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.NotificationsLogs?>()) {
      return (data != null ? _i8.NotificationsLogs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.NotificacionPush?>()) {
      return (data != null ? _i9.NotificacionPush.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ModuleClass?>()) {
      return (data != null ? _i10.ModuleClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.DeviceToken?>()) {
      return (data != null ? _i11.DeviceToken.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i8.NotificationsLogs>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.NotificationsLogs>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i7.RegisterDeviceToken>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.RegisterDeviceToken>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i7.RegisterDeviceToken>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.RegisterDeviceToken>(e))
              .toList()
          : null) as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Device) {
      return 'Device';
    }
    if (data is _i3.DevicesType) {
      return 'DevicesType';
    }
    if (data is _i4.NotificationStatus) {
      return 'NotificationStatus';
    }
    if (data is _i5.NotifyEnvironment) {
      return 'NotifyEnvironment';
    }
    if (data is _i6.NotifyPodException) {
      return 'NotifyPodException';
    }
    if (data is _i7.RegisterDeviceToken) {
      return 'RegisterDeviceToken';
    }
    if (data is _i8.NotificationsLogs) {
      return 'NotificationsLogs';
    }
    if (data is _i9.NotificacionPush) {
      return 'NotificacionPush';
    }
    if (data is _i10.ModuleClass) {
      return 'ModuleClass';
    }
    if (data is _i11.DeviceToken) {
      return 'DeviceToken';
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
      return deserialize<_i2.Device>(data['data']);
    }
    if (dataClassName == 'DevicesType') {
      return deserialize<_i3.DevicesType>(data['data']);
    }
    if (dataClassName == 'NotificationStatus') {
      return deserialize<_i4.NotificationStatus>(data['data']);
    }
    if (dataClassName == 'NotifyEnvironment') {
      return deserialize<_i5.NotifyEnvironment>(data['data']);
    }
    if (dataClassName == 'NotifyPodException') {
      return deserialize<_i6.NotifyPodException>(data['data']);
    }
    if (dataClassName == 'RegisterDeviceToken') {
      return deserialize<_i7.RegisterDeviceToken>(data['data']);
    }
    if (dataClassName == 'NotificationsLogs') {
      return deserialize<_i8.NotificationsLogs>(data['data']);
    }
    if (dataClassName == 'NotificacionPush') {
      return deserialize<_i9.NotificacionPush>(data['data']);
    }
    if (dataClassName == 'ModuleClass') {
      return deserialize<_i10.ModuleClass>(data['data']);
    }
    if (dataClassName == 'DeviceToken') {
      return deserialize<_i11.DeviceToken>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
