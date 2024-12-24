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
import '../devices/devices.dart' as _i2;
import '../tokens/token_device.dart' as _i3;

abstract class RegisterDeviceToken implements _i1.SerializableModel {
  RegisterDeviceToken._({
    this.id,
    required this.deviceId,
    this.device,
    required this.tokenId,
    this.token,
  });

  factory RegisterDeviceToken({
    int? id,
    required int deviceId,
    _i2.Device? device,
    required int tokenId,
    _i3.DeviceToken? token,
  }) = _RegisterDeviceTokenImpl;

  factory RegisterDeviceToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return RegisterDeviceToken(
      id: jsonSerialization['id'] as int?,
      deviceId: jsonSerialization['deviceId'] as int,
      device: jsonSerialization['device'] == null
          ? null
          : _i2.Device.fromJson(
              (jsonSerialization['device'] as Map<String, dynamic>)),
      tokenId: jsonSerialization['tokenId'] as int,
      token: jsonSerialization['token'] == null
          ? null
          : _i3.DeviceToken.fromJson(
              (jsonSerialization['token'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int deviceId;

  _i2.Device? device;

  int tokenId;

  _i3.DeviceToken? token;

  RegisterDeviceToken copyWith({
    int? id,
    int? deviceId,
    _i2.Device? device,
    int? tokenId,
    _i3.DeviceToken? token,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'deviceId': deviceId,
      if (device != null) 'device': device?.toJson(),
      'tokenId': tokenId,
      if (token != null) 'token': token?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RegisterDeviceTokenImpl extends RegisterDeviceToken {
  _RegisterDeviceTokenImpl({
    int? id,
    required int deviceId,
    _i2.Device? device,
    required int tokenId,
    _i3.DeviceToken? token,
  }) : super._(
          id: id,
          deviceId: deviceId,
          device: device,
          tokenId: tokenId,
          token: token,
        );

  @override
  RegisterDeviceToken copyWith({
    Object? id = _Undefined,
    int? deviceId,
    Object? device = _Undefined,
    int? tokenId,
    Object? token = _Undefined,
  }) {
    return RegisterDeviceToken(
      id: id is int? ? id : this.id,
      deviceId: deviceId ?? this.deviceId,
      device: device is _i2.Device? ? device : this.device?.copyWith(),
      tokenId: tokenId ?? this.tokenId,
      token: token is _i3.DeviceToken? ? token : this.token?.copyWith(),
    );
  }
}
