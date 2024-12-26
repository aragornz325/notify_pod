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

abstract class NotificacionPushByTopic implements _i1.SerializableModel {
  NotificacionPushByTopic._({
    this.id,
    required this.title,
    required this.message,
    required this.topic,
    required this.sendAt,
    required this.status,
    this.readAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificacionPushByTopic({
    int? id,
    required String title,
    required String message,
    required String topic,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificacionPushByTopicImpl;

  factory NotificacionPushByTopic.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return NotificacionPushByTopic(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      message: jsonSerialization['message'] as String,
      topic: jsonSerialization['topic'] as String,
      sendAt: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['sendAt']),
      status:
          _i2.NotificationStatus.fromJson((jsonSerialization['status'] as int)),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
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

  String title;

  String message;

  String topic;

  DateTime sendAt;

  _i2.NotificationStatus status;

  DateTime? readAt;

  DateTime createdAt;

  DateTime updatedAt;

  NotificacionPushByTopic copyWith({
    int? id,
    String? title,
    String? message,
    String? topic,
    DateTime? sendAt,
    _i2.NotificationStatus? status,
    DateTime? readAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'message': message,
      'topic': topic,
      'sendAt': sendAt.toJson(),
      'status': status.toJson(),
      if (readAt != null) 'readAt': readAt?.toJson(),
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

class _NotificacionPushByTopicImpl extends NotificacionPushByTopic {
  _NotificacionPushByTopicImpl({
    int? id,
    required String title,
    required String message,
    required String topic,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          title: title,
          message: message,
          topic: topic,
          sendAt: sendAt,
          status: status,
          readAt: readAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificacionPushByTopic copyWith({
    Object? id = _Undefined,
    String? title,
    String? message,
    String? topic,
    DateTime? sendAt,
    _i2.NotificationStatus? status,
    Object? readAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificacionPushByTopic(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      topic: topic ?? this.topic,
      sendAt: sendAt ?? this.sendAt,
      status: status ?? this.status,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
