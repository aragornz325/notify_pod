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

abstract class DeviceToken implements _i1.SerializableModel {
  DeviceToken._({
    this.id,
    required this.token,
    required this.userId,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DeviceToken({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DeviceTokenImpl;

  factory DeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeviceToken(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
      userId: jsonSerialization['userId'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
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

  String token;

  String userId;

  _i2.DevicesType type;

  DateTime createdAt;

  DateTime updatedAt;

  DeviceToken copyWith({
    int? id,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
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

class _DeviceTokenImpl extends DeviceToken {
  _DeviceTokenImpl({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          token: token,
          userId: userId,
          type: type,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  DeviceToken copyWith({
    Object? id = _Undefined,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DeviceToken(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
