import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'web_browser_device_info.freezed.dart';
part 'web_browser_device_info.g.dart';

@freezed
class WebBrowserInfoModel with _$WebBrowserInfoModel {
  factory WebBrowserInfoModel({
    required String browserName,
    String? appCodeName,
    String? appName,
    String? appVersion,
    double? deviceMemory,
    String? language,
    List<dynamic>? languages,
    String? platform,
    String? product,
    String? productSub,
    String? userAgent,
    String? vendor,
    String? vendorSub,
    int? hardwareConcurrency,
    int? maxTouchPoints,
  }) = _WebBrowserInfoModel;

  factory WebBrowserInfoModel.fromWebBrowserInfo(WebBrowserInfo data) {
    return WebBrowserInfoModel(
      browserName: data.browserName.name,
      appCodeName: data.appCodeName,
      appName: data.appName,
      appVersion: data.appVersion,
      deviceMemory: data.deviceMemory,
      language: data.language,
      languages: data.languages,
      platform: data.platform,
      product: data.product,
      productSub: data.productSub,
      userAgent: data.userAgent,
      vendor: data.vendor,
      vendorSub: data.vendorSub,
      hardwareConcurrency: data.hardwareConcurrency,
      maxTouchPoints: data.maxTouchPoints,
    );
  }

  factory WebBrowserInfoModel.fromJson(Map<String, dynamic> json) => _$WebBrowserInfoModelFromJson(json);
}