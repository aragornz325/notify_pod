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

abstract class Device implements _i1.SerializableModel {
  Device._({
    this.id,
    required this.userId,
    required this.idDevice,
    required this.type,
    required this.tokenFCM,
    this.notificationsLogs,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Device({
    int? id,
    required String userId,
    required String idDevice,
    required _i2.DevicesType type,
    required String tokenFCM,
    List<_i3.NotificationsLogs>? notificationsLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DeviceImpl;

  factory Device.fromJson(Map<String, dynamic> jsonSerialization) {
    return Device(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as String,
      idDevice: jsonSerialization['idDevice'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
      tokenFCM: jsonSerialization['tokenFCM'] as String,
      notificationsLogs: (jsonSerialization['notificationsLogs'] as List?)
          ?.map((e) =>
              _i3.NotificationsLogs.fromJson((e as Map<String, dynamic>)))
          .toList(),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String userId;

  String idDevice;

  _i2.DevicesType type;

  String tokenFCM;

  List<_i3.NotificationsLogs>? notificationsLogs;

  DateTime createdAt;

  DateTime updatedAt;

  Device copyWith({
    int? id,
    String? userId,
    String? idDevice,
    _i2.DevicesType? type,
    String? tokenFCM,
    List<_i3.NotificationsLogs>? notificationsLogs,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'idDevice': idDevice,
      'type': type.toJson(),
      'tokenFCM': tokenFCM,
      if (notificationsLogs != null)
        'notificationsLogs':
            notificationsLogs?.toJson(valueToJson: (v) => v.toJson()),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
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
    required String tokenFCM,
    List<_i3.NotificationsLogs>? notificationsLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          idDevice: idDevice,
          type: type,
          tokenFCM: tokenFCM,
          notificationsLogs: notificationsLogs,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Device copyWith({
    Object? id = _Undefined,
    String? userId,
    String? idDevice,
    _i2.DevicesType? type,
    String? tokenFCM,
    Object? notificationsLogs = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Device(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      idDevice: idDevice ?? this.idDevice,
      type: type ?? this.type,
      tokenFCM: tokenFCM ?? this.tokenFCM,
      notificationsLogs: notificationsLogs is List<_i3.NotificationsLogs>?
          ? notificationsLogs
          : this.notificationsLogs?.map((e0) => e0.copyWith()).toList(),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
