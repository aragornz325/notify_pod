// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linux_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinuxDeviceInfoModelImpl _$$LinuxDeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LinuxDeviceInfoModelImpl(
      name: json['name'] as String,
      version: json['version'] as String?,
      id: json['id'] as String,
      idLike:
          (json['idLike'] as List<dynamic>?)?.map((e) => e as String).toList(),
      versionCodename: json['versionCodename'] as String?,
      versionId: json['versionId'] as String?,
      prettyName: json['prettyName'] as String,
      buildId: json['buildId'] as String?,
      variant: json['variant'] as String?,
      variantId: json['variantId'] as String?,
      machineId: json['machineId'] as String?,
    );

Map<String, dynamic> _$$LinuxDeviceInfoModelImplToJson(
        _$LinuxDeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'id': instance.id,
      'idLike': instance.idLike,
      'versionCodename': instance.versionCodename,
      'versionId': instance.versionId,
      'prettyName': instance.prettyName,
      'buildId': instance.buildId,
      'variant': instance.variant,
      'variantId': instance.variantId,
      'machineId': instance.machineId,
    };
