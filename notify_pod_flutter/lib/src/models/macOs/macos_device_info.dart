import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'macos_device_info.freezed.dart';
part 'macos_device_info.g.dart';

@freezed
class MacOsDeviceInfoModel with _$MacOsDeviceInfoModel {
  factory MacOsDeviceInfoModel({
    required String computerName,
    required String hostName,
    required String arch,
    required String model,
    required String modelName,
    required String kernelVersion,
    required int majorVersion,
    required int minorVersion,
    required int patchVersion,
    required String osRelease,
    required int activeCPUs,
    required int memorySize,
    required int cpuFrequency,
    String? systemGUID,
  }) = _MacOsDeviceInfoModel;

  factory MacOsDeviceInfoModel.fromMacOsDeviceInfo(MacOsDeviceInfo data) {
    return MacOsDeviceInfoModel(
      computerName: data.computerName,
      hostName: data.hostName,
      arch: data.arch,
      model: data.model,
      modelName: data.modelName,
      kernelVersion: data.kernelVersion,
      majorVersion: data.majorVersion,
      minorVersion: data.minorVersion,
      patchVersion: data.patchVersion,
      osRelease: data.osRelease,
      activeCPUs: data.activeCPUs,
      memorySize: data.memorySize,
      cpuFrequency: data.cpuFrequency,
      systemGUID: data.systemGUID,
    );
  }

  factory MacOsDeviceInfoModel.fromJson(Map<String, dynamic> json) => _$MacOsDeviceInfoModelFromJson(json);
}