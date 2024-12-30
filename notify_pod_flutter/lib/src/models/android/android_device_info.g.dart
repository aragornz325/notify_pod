// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'android_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AndroidDeviceInfoModelImpl _$$AndroidDeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AndroidDeviceInfoModelImpl(
      securityPatch: json['securityPatch'] as String?,
      sdkInt: (json['sdkInt'] as num).toInt(),
      release: json['release'] as String,
      previewSdkInt: (json['previewSdkInt'] as num?)?.toInt(),
      incremental: json['incremental'] as String,
      codename: json['codename'] as String,
      baseOS: json['baseOS'] as String?,
      board: json['board'] as String,
      bootloader: json['bootloader'] as String,
      brand: json['brand'] as String,
      device: json['device'] as String,
      display: json['display'] as String,
      fingerprint: json['fingerprint'] as String,
      hardware: json['hardware'] as String,
      host: json['host'] as String,
      id: json['id'] as String,
      manufacturer: json['manufacturer'] as String,
      model: json['model'] as String,
      product: json['product'] as String,
      supported32BitAbis: (json['supported32BitAbis'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      supported64BitAbis: (json['supported64BitAbis'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      supportedAbis: (json['supportedAbis'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: json['tags'] as String,
      type: json['type'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      systemFeatures: (json['systemFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      serialNumber: json['serialNumber'] as String?,
      isLowRamDevice: json['isLowRamDevice'] as bool?,
    );

Map<String, dynamic> _$$AndroidDeviceInfoModelImplToJson(
        _$AndroidDeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'securityPatch': instance.securityPatch,
      'sdkInt': instance.sdkInt,
      'release': instance.release,
      'previewSdkInt': instance.previewSdkInt,
      'incremental': instance.incremental,
      'codename': instance.codename,
      'baseOS': instance.baseOS,
      'board': instance.board,
      'bootloader': instance.bootloader,
      'brand': instance.brand,
      'device': instance.device,
      'display': instance.display,
      'fingerprint': instance.fingerprint,
      'hardware': instance.hardware,
      'host': instance.host,
      'id': instance.id,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'product': instance.product,
      'supported32BitAbis': instance.supported32BitAbis,
      'supported64BitAbis': instance.supported64BitAbis,
      'supportedAbis': instance.supportedAbis,
      'tags': instance.tags,
      'type': instance.type,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'systemFeatures': instance.systemFeatures,
      'serialNumber': instance.serialNumber,
      'isLowRamDevice': instance.isLowRamDevice,
    };
