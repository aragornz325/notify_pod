// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_browser_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebBrowserInfoModelImpl _$$WebBrowserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WebBrowserInfoModelImpl(
      browserName: json['browserName'] as String,
      appCodeName: json['appCodeName'] as String?,
      appName: json['appName'] as String?,
      appVersion: json['appVersion'] as String?,
      deviceMemory: (json['deviceMemory'] as num?)?.toDouble(),
      language: json['language'] as String?,
      languages: json['languages'] as List<dynamic>?,
      platform: json['platform'] as String?,
      product: json['product'] as String?,
      productSub: json['productSub'] as String?,
      userAgent: json['userAgent'] as String?,
      vendor: json['vendor'] as String?,
      vendorSub: json['vendorSub'] as String?,
      hardwareConcurrency: (json['hardwareConcurrency'] as num?)?.toInt(),
      maxTouchPoints: (json['maxTouchPoints'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WebBrowserInfoModelImplToJson(
        _$WebBrowserInfoModelImpl instance) =>
    <String, dynamic>{
      'browserName': instance.browserName,
      'appCodeName': instance.appCodeName,
      'appName': instance.appName,
      'appVersion': instance.appVersion,
      'deviceMemory': instance.deviceMemory,
      'language': instance.language,
      'languages': instance.languages,
      'platform': instance.platform,
      'product': instance.product,
      'productSub': instance.productSub,
      'userAgent': instance.userAgent,
      'vendor': instance.vendor,
      'vendorSub': instance.vendorSub,
      'hardwareConcurrency': instance.hardwareConcurrency,
      'maxTouchPoints': instance.maxTouchPoints,
    };
