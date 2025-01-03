// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macos_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MacOsDeviceInfoModelImpl _$$MacOsDeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MacOsDeviceInfoModelImpl(
      computerName: json['computerName'] as String,
      hostName: json['hostName'] as String,
      arch: json['arch'] as String,
      model: json['model'] as String,
      modelName: json['modelName'] as String,
      kernelVersion: json['kernelVersion'] as String,
      majorVersion: (json['majorVersion'] as num).toInt(),
      minorVersion: (json['minorVersion'] as num).toInt(),
      patchVersion: (json['patchVersion'] as num).toInt(),
      osRelease: json['osRelease'] as String,
      activeCPUs: (json['activeCPUs'] as num).toInt(),
      memorySize: (json['memorySize'] as num).toInt(),
      cpuFrequency: (json['cpuFrequency'] as num).toInt(),
      systemGUID: json['systemGUID'] as String?,
    );

Map<String, dynamic> _$$MacOsDeviceInfoModelImplToJson(
        _$MacOsDeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'computerName': instance.computerName,
      'hostName': instance.hostName,
      'arch': instance.arch,
      'model': instance.model,
      'modelName': instance.modelName,
      'kernelVersion': instance.kernelVersion,
      'majorVersion': instance.majorVersion,
      'minorVersion': instance.minorVersion,
      'patchVersion': instance.patchVersion,
      'osRelease': instance.osRelease,
      'activeCPUs': instance.activeCPUs,
      'memorySize': instance.memorySize,
      'cpuFrequency': instance.cpuFrequency,
      'systemGUID': instance.systemGUID,
    };
