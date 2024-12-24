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
import '../junction/device_token.dart' as _i3;

abstract class DeviceToken implements _i1.SerializableModel {
  DeviceToken._({
    this.id,
    required this.token,
    required this.userId,
    required this.type,
    required this.deviceId,
    required this.createdAt,
    required this.updatedAt,
    this.register,
  });

  factory DeviceToken({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required String deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i3.Register>? register,
  }) = _DeviceTokenImpl;

  factory DeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeviceToken(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
      userId: jsonSerialization['userId'] as String,
      type: _i2.DevicesType.fromJson((jsonSerialization['type'] as int)),
      deviceId: jsonSerialization['deviceId'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      register: (jsonSerialization['register'] as List?)
          ?.map((e) => _i3.Register.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String token;

  String userId;

  _i2.DevicesType type;

  String deviceId;

  DateTime createdAt;

  DateTime updatedAt;

  List<_i3.Register>? register;

  DeviceToken copyWith({
    int? id,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    String? deviceId,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i3.Register>? register,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'userId': userId,
      'type': type.toJson(),
      'deviceId': deviceId,
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

class _DeviceTokenImpl extends DeviceToken {
  _DeviceTokenImpl({
    int? id,
    required String token,
    required String userId,
    required _i2.DevicesType type,
    required String deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<_i3.Register>? register,
  }) : super._(
          id: id,
          token: token,
          userId: userId,
          type: type,
          deviceId: deviceId,
          createdAt: createdAt,
          updatedAt: updatedAt,
          register: register,
        );

  @override
  DeviceToken copyWith({
    Object? id = _Undefined,
    String? token,
    String? userId,
    _i2.DevicesType? type,
    String? deviceId,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? register = _Undefined,
  }) {
    return DeviceToken(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      deviceId: deviceId ?? this.deviceId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      register: register is List<_i3.Register>?
          ? register
          : this.register?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
