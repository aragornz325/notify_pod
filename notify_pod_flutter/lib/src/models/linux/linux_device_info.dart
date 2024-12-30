import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'linux_device_info.freezed.dart';
part 'linux_device_info.g.dart';

@freezed
class LinuxDeviceInfoModel with _$LinuxDeviceInfoModel {
  factory LinuxDeviceInfoModel({
    required String name,
    String? version,
    required String id,
    List<String>? idLike,
    String? versionCodename,
    String? versionId,
    required String prettyName,
    String? buildId,
    String? variant,
    String? variantId,
    String? machineId,
  }) = _LinuxDeviceInfoModel;

  factory LinuxDeviceInfoModel.fromLinuxDeviceInfo(LinuxDeviceInfo data) {
    return LinuxDeviceInfoModel(
      name: data.name,
      version: data.version,
      id: data.id,
      idLike: data.idLike,
      versionCodename: data.versionCodename,
      versionId: data.versionId,
      prettyName: data.prettyName,
      buildId: data.buildId,
      variant: data.variant,
      variantId: data.variantId,
      machineId: data.machineId,
    );
  }

  factory LinuxDeviceInfoModel.fromJson(Map<String, dynamic> json) => _$LinuxDeviceInfoModelFromJson(json);
}