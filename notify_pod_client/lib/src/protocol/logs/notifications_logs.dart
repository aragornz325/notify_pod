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
import '../enums/notification_status.dart' as _i2;

abstract class NotificationsLogs implements _i1.SerializableModel {
  NotificationsLogs._({
    this.id,
    required this.notificationId,
    required this.status,
    this.error,
    required this.deviceId,
    required this.attemptAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificationsLogs({
    int? id,
    required String notificationId,
    required _i2.NotificationStatus status,
    String? error,
    required int deviceId,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificationsLogsImpl;

  factory NotificationsLogs.fromJson(Map<String, dynamic> jsonSerialization) {
    return NotificationsLogs(
      id: jsonSerialization['id'] as int?,
      notificationId: jsonSerialization['notificationId'] as String,
      status:
          _i2.NotificationStatus.fromJson((jsonSerialization['status'] as int)),
      error: jsonSerialization['error'] as String?,
      deviceId: jsonSerialization['deviceId'] as int,
      attemptAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['attemptAt']),
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

  String notificationId;

  _i2.NotificationStatus status;

  String? error;

  int deviceId;

  DateTime attemptAt;

  DateTime createdAt;

  DateTime updatedAt;

  NotificationsLogs copyWith({
    int? id,
    String? notificationId,
    _i2.NotificationStatus? status,
    String? error,
    int? deviceId,
    DateTime? attemptAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'notificationId': notificationId,
      'status': status.toJson(),
      if (error != null) 'error': error,
      'deviceId': deviceId,
      'attemptAt': attemptAt.toJson(),
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

class _NotificationsLogsImpl extends NotificationsLogs {
  _NotificationsLogsImpl({
    int? id,
    required String notificationId,
    required _i2.NotificationStatus status,
    String? error,
    required int deviceId,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          notificationId: notificationId,
          status: status,
          error: error,
          deviceId: deviceId,
          attemptAt: attemptAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificationsLogs copyWith({
    Object? id = _Undefined,
    String? notificationId,
    _i2.NotificationStatus? status,
    Object? error = _Undefined,
    int? deviceId,
    DateTime? attemptAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificationsLogs(
      id: id is int? ? id : this.id,
      notificationId: notificationId ?? this.notificationId,
      status: status ?? this.status,
      error: error is String? ? error : this.error,
      deviceId: deviceId ?? this.deviceId,
      attemptAt: attemptAt ?? this.attemptAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
