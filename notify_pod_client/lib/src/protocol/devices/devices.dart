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
import '../enums/devices_type.dart' as _i2;
import '../logs/notifications_logs.dart' as _i3;
import '../junction/device_token.dart' as _i4;

abstract class Device implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String userId;

  String idDevice;

  _i2.DevicesType type;

  List<_i3.NotificationsLogs>? notificationsLogs;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i4.RegisterDeviceToken>? register;

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
