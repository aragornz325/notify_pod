import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'windows_device_info.freezed.dart';
part 'windows_device_info.g.dart';

@freezed
class WindowsDeviceInfoModel with _$WindowsDeviceInfoModel {
  factory WindowsDeviceInfoModel({
    required int numberOfCores,
    required String computerName,
    required int systemMemoryInMegabytes,
    required String userName,
    required int majorVersion,
    required int minorVersion,
    required int buildNumber,
    required int platformId,
    required String csdVersion,
    required int servicePackMajor,
    required int servicePackMinor,
    required int suitMask,
    required int productType,
    required int reserved,
    required String buildLab,
    required String buildLabEx,
    required String digitalProductId,
    required String displayVersion,
    required String editionId,
    required DateTime? installDate,
    required String productId,
    required String productName,
    required String registeredOwner,
    required String releaseId,
    required String deviceId,
  }) = _WindowsDeviceInfoModel;

  factory WindowsDeviceInfoModel.fromWindowsDeviceInfo(WindowsDeviceInfo data) {
    return WindowsDeviceInfoModel(
      numberOfCores: data.numberOfCores,
      computerName: data.computerName,
      systemMemoryInMegabytes: data.systemMemoryInMegabytes,
      userName: data.userName,
      majorVersion: data.majorVersion,
      minorVersion: data.minorVersion,
      buildNumber: data.buildNumber,
      platformId: data.platformId,
      csdVersion: data.csdVersion,
      servicePackMajor: data.servicePackMajor,
      servicePackMinor: data.servicePackMinor,
      suitMask: data.suitMask,
      productType: data.productType,
      reserved: data.reserved,
      buildLab: data.buildLab,
      buildLabEx: data.buildLabEx,
      digitalProductId: base64Encode(data.digitalProductId),
      displayVersion: data.displayVersion,
      editionId: data.editionId,
      installDate: data.installDate,
      productId: data.productId,
      productName: data.productName,
      registeredOwner: data.registeredOwner,
      releaseId: data.releaseId,
      deviceId: data.deviceId,
    );
  }

  factory WindowsDeviceInfoModel.fromJson(Map<String, dynamic> json) => _$WindowsDeviceInfoModelFromJson(json);
}