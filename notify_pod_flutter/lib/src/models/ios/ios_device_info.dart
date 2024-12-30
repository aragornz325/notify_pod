import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'ios_device_info.freezed.dart';
part 'ios_device_info.g.dart';

@freezed
class IosDeviceInfoModel with _$IosDeviceInfoModel {
  factory IosDeviceInfoModel({
    required String name,
    required String systemName,
    required String systemVersion,
    required String model,
    required String modelName,
    required String localizedModel,
    String? identifierForVendor,
    required bool isPhysicalDevice,
    required bool isiOSAppOnMac,
    required String sysname,
    required String nodename,
    required String release,
    required String version,
    required String machine,
  }) = _IosDeviceInfoModel;

  factory IosDeviceInfoModel.fromIosDeviceInfo(IosDeviceInfo data) {
    return IosDeviceInfoModel(
      name: data.name,
      systemName: data.systemName,
      systemVersion: data.systemVersion,
      model: data.model,
      modelName: data.modelName,
      localizedModel: data.localizedModel,
      identifierForVendor: data.identifierForVendor,
      isPhysicalDevice: data.isPhysicalDevice,
      isiOSAppOnMac: data.isiOSAppOnMac,
      sysname: data.utsname.sysname,
      nodename: data.utsname.nodename,
      release: data.utsname.release,
      version: data.utsname.version,
      machine: data.utsname.machine,
    );
  }

  factory IosDeviceInfoModel.fromJson(Map<String, dynamic> json) => _$IosDeviceInfoModelFromJson(json);
}