// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'windows_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WindowsDeviceInfoModelImpl _$$WindowsDeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WindowsDeviceInfoModelImpl(
      numberOfCores: (json['numberOfCores'] as num).toInt(),
      computerName: json['computerName'] as String,
      systemMemoryInMegabytes: (json['systemMemoryInMegabytes'] as num).toInt(),
      userName: json['userName'] as String,
      majorVersion: (json['majorVersion'] as num).toInt(),
      minorVersion: (json['minorVersion'] as num).toInt(),
      buildNumber: (json['buildNumber'] as num).toInt(),
      platformId: (json['platformId'] as num).toInt(),
      csdVersion: json['csdVersion'] as String,
      servicePackMajor: (json['servicePackMajor'] as num).toInt(),
      servicePackMinor: (json['servicePackMinor'] as num).toInt(),
      suitMask: (json['suitMask'] as num).toInt(),
      productType: (json['productType'] as num).toInt(),
      reserved: (json['reserved'] as num).toInt(),
      buildLab: json['buildLab'] as String,
      buildLabEx: json['buildLabEx'] as String,
      digitalProductId: json['digitalProductId'] as String,
      displayVersion: json['displayVersion'] as String,
      editionId: json['editionId'] as String,
      installDate: json['installDate'] == null
          ? null
          : DateTime.parse(json['installDate'] as String),
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      registeredOwner: json['registeredOwner'] as String,
      releaseId: json['releaseId'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$WindowsDeviceInfoModelImplToJson(
        _$WindowsDeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'numberOfCores': instance.numberOfCores,
      'computerName': instance.computerName,
      'systemMemoryInMegabytes': instance.systemMemoryInMegabytes,
      'userName': instance.userName,
      'majorVersion': instance.majorVersion,
      'minorVersion': instance.minorVersion,
      'buildNumber': instance.buildNumber,
      'platformId': instance.platformId,
      'csdVersion': instance.csdVersion,
      'servicePackMajor': instance.servicePackMajor,
      'servicePackMinor': instance.servicePackMinor,
      'suitMask': instance.suitMask,
      'productType': instance.productType,
      'reserved': instance.reserved,
      'buildLab': instance.buildLab,
      'buildLabEx': instance.buildLabEx,
      'digitalProductId': instance.digitalProductId,
      'displayVersion': instance.displayVersion,
      'editionId': instance.editionId,
      'installDate': instance.installDate?.toIso8601String(),
      'productId': instance.productId,
      'productName': instance.productName,
      'registeredOwner': instance.registeredOwner,
      'releaseId': instance.releaseId,
      'deviceId': instance.deviceId,
    };
