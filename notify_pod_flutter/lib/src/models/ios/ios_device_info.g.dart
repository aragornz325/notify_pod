// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ios_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IosDeviceInfoModelImpl _$$IosDeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IosDeviceInfoModelImpl(
      name: json['name'] as String,
      systemName: json['systemName'] as String,
      systemVersion: json['systemVersion'] as String,
      model: json['model'] as String,
      modelName: json['modelName'] as String,
      localizedModel: json['localizedModel'] as String,
      identifierForVendor: json['identifierForVendor'] as String?,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      isiOSAppOnMac: json['isiOSAppOnMac'] as bool,
      sysname: json['sysname'] as String,
      nodename: json['nodename'] as String,
      release: json['release'] as String,
      version: json['version'] as String,
      machine: json['machine'] as String,
    );

Map<String, dynamic> _$$IosDeviceInfoModelImplToJson(
        _$IosDeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'systemName': instance.systemName,
      'systemVersion': instance.systemVersion,
      'model': instance.model,
      'modelName': instance.modelName,
      'localizedModel': instance.localizedModel,
      'identifierForVendor': instance.identifierForVendor,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'isiOSAppOnMac': instance.isiOSAppOnMac,
      'sysname': instance.sysname,
      'nodename': instance.nodename,
      'release': instance.release,
      'version': instance.version,
      'machine': instance.machine,
    };
