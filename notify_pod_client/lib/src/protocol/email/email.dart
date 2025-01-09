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

abstract class EmailPod implements _i1.SerializableModel {
  EmailPod._({
    this.id,
    required this.email,
    required this.subject,
    required this.body,
    required this.createdAt,
    required this.emailStatus,
    required this.logoUuid,
    this.sentAt,
    this.followUpAt,
    this.readOn,
  });

  factory EmailPod({
    int? id,
    required String email,
    required String subject,
    required String body,
    required DateTime createdAt,
    required _i2.NotificationStatus emailStatus,
    required String logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  }) = _EmailPodImpl;

  factory EmailPod.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmailPod(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      subject: jsonSerialization['subject'] as String,
      body: jsonSerialization['body'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      emailStatus: _i2.NotificationStatus.fromJson(
          (jsonSerialization['emailStatus'] as int)),
      logoUuid: jsonSerialization['logoUuid'] as String,
      sentAt: jsonSerialization['sentAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['sentAt']),
      followUpAt: jsonSerialization['followUpAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['followUpAt']),
      readOn: jsonSerialization['readOn'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['readOn']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String email;

  String subject;

  String body;

  DateTime createdAt;

  _i2.NotificationStatus emailStatus;

  String logoUuid;

  DateTime? sentAt;

  DateTime? followUpAt;

  DateTime? readOn;

  EmailPod copyWith({
    int? id,
    String? email,
    String? subject,
    String? body,
    DateTime? createdAt,
    _i2.NotificationStatus? emailStatus,
    String? logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'email': email,
      'subject': subject,
      'body': body,
      'createdAt': createdAt.toJson(),
      'emailStatus': emailStatus.toJson(),
      'logoUuid': logoUuid,
      if (sentAt != null) 'sentAt': sentAt?.toJson(),
      if (followUpAt != null) 'followUpAt': followUpAt?.toJson(),
      if (readOn != null) 'readOn': readOn?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmailPodImpl extends EmailPod {
  _EmailPodImpl({
    int? id,
    required String email,
    required String subject,
    required String body,
    required DateTime createdAt,
    required _i2.NotificationStatus emailStatus,
    required String logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  }) : super._(
          id: id,
          email: email,
          subject: subject,
          body: body,
          createdAt: createdAt,
          emailStatus: emailStatus,
          logoUuid: logoUuid,
          sentAt: sentAt,
          followUpAt: followUpAt,
          readOn: readOn,
        );

  @override
  EmailPod copyWith({
    Object? id = _Undefined,
    String? email,
    String? subject,
    String? body,
    DateTime? createdAt,
    _i2.NotificationStatus? emailStatus,
    String? logoUuid,
    Object? sentAt = _Undefined,
    Object? followUpAt = _Undefined,
    Object? readOn = _Undefined,
  }) {
    return EmailPod(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      subject: subject ?? this.subject,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      emailStatus: emailStatus ?? this.emailStatus,
      logoUuid: logoUuid ?? this.logoUuid,
      sentAt: sentAt is DateTime? ? sentAt : this.sentAt,
      followUpAt: followUpAt is DateTime? ? followUpAt : this.followUpAt,
      readOn: readOn is DateTime? ? readOn : this.readOn,
    );
  }
}
