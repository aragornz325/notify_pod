import 'package:device_info_plus/device_info_plus.dart';
import 'package:notify_pod_flutter/src/models/android/android_device_info.dart';
import 'package:notify_pod_flutter/src/models/ios/ios_device_info.dart';
import 'package:notify_pod_flutter/src/models/linux/linux_device_info.dart';
import 'package:notify_pod_flutter/src/models/macOs/macos_device_info.dart';
import 'package:notify_pod_flutter/src/models/weBrowser/web_browser_device_info.dart';
import 'package:notify_pod_flutter/src/models/windows/windows_device_info.dart';

Map<String, dynamic> readAndroidBuildData(
  AndroidDeviceInfo build,
) {
  final model = AndroidDeviceInfoModel.fromAndroidDeviceInfo(
    build,
  );
  return model.toJson();
}

Map<String, dynamic> readIosDeviceInfo(
  IosDeviceInfo data,
) {
  final model = IosDeviceInfoModel.fromIosDeviceInfo(
    data,
  );
  return model.toJson();
}

Map<String, dynamic> readLinuxDeviceInfo(
  LinuxDeviceInfo data,
) {
  final model = LinuxDeviceInfoModel.fromLinuxDeviceInfo(
    data,
  );
  return model.toJson();
}

Map<String, dynamic> readWebBrowserInfo(
  WebBrowserInfo data,
) {
  final model = WebBrowserInfoModel.fromWebBrowserInfo(
    data,
  );
  return model.toJson();
}

Map<String, dynamic> readMacOsDeviceInfo(
  MacOsDeviceInfo data,
) {
  final model = MacOsDeviceInfoModel.fromMacOsDeviceInfo(
    data,
  );
  return model.toJson();
}

Map<String, dynamic> readWindowsDeviceInfo(
  WindowsDeviceInfo data,
) {
  final model = WindowsDeviceInfoModel.fromWindowsDeviceInfo(
    data,
  );
  return model.toJson();
}
