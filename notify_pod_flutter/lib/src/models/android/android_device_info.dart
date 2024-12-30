import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'android_device_info.freezed.dart';
part 'android_device_info.g.dart';

@freezed
class AndroidDeviceInfoModel with _$AndroidDeviceInfoModel {
  factory AndroidDeviceInfoModel({
    String? securityPatch,
    required int sdkInt,
    required String release,
    int? previewSdkInt,
    required String incremental,
    required String codename,
    String? baseOS,
    required String board,
    required String bootloader,
    required String brand,
    required String device,
    required String display,
    required String fingerprint,
    required String hardware,
    required String host,
    required String id,
    required String manufacturer,
    required String model,
    required String product,
    required List<String> supported32BitAbis,
    required List<String> supported64BitAbis,
    required List<String> supportedAbis,
    required String tags,
    required String type,
    required bool isPhysicalDevice,
    required List<String> systemFeatures,
    String? serialNumber,
    bool? isLowRamDevice,
  }) = _AndroidDeviceInfoModel;

  factory AndroidDeviceInfoModel.fromAndroidDeviceInfo(AndroidDeviceInfo build) {
    return AndroidDeviceInfoModel(
      securityPatch: build.version.securityPatch,
      sdkInt: build.version.sdkInt,
      release: build.version.release,
      previewSdkInt: build.version.previewSdkInt,
      incremental: build.version.incremental,
      codename: build.version.codename,
      baseOS: build.version.baseOS,
      board: build.board,
      bootloader: build.bootloader,
      brand: build.brand,
      device: build.device,
      display: build.display,
      fingerprint: build.fingerprint,
      hardware: build.hardware,
      host: build.host,
      id: build.id,
      manufacturer: build.manufacturer,
      model: build.model,
      product: build.product,
      supported32BitAbis: build.supported32BitAbis,
      supported64BitAbis: build.supported64BitAbis,
      supportedAbis: build.supportedAbis,
      tags: build.tags,
      type: build.type,
      isPhysicalDevice: build.isPhysicalDevice,
      systemFeatures: build.systemFeatures,
      serialNumber: build.serialNumber,
      isLowRamDevice: build.isLowRamDevice,
    );
  }

  factory AndroidDeviceInfoModel.fromJson(Map<String, dynamic> json) => _$AndroidDeviceInfoModelFromJson(json);
}