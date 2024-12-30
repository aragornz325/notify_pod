import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:notify_pod_flutter/src/models/android/android_device_info.dart';
import 'package:notify_pod_flutter/src/models/ios/ios_device_info.dart';
import 'package:notify_pod_flutter/src/models/linux/linux_device_info.dart';
import 'package:notify_pod_flutter/src/models/macOs/macos_device_info.dart';
import 'package:notify_pod_flutter/src/models/weBrowser/web_browser_device_info.dart';
import 'package:notify_pod_flutter/src/models/windows/windows_device_info.dart';

Future<dynamic> getDeviceInfoModel(
  DeviceInfoPlugin deviceInfoPlugin,
) async {
  if (kIsWeb) {
    return WebBrowserInfoModel.fromWebBrowserInfo(
      await deviceInfoPlugin.webBrowserInfo,
    );
  } else {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidDeviceInfoModel.fromAndroidDeviceInfo(
          await deviceInfoPlugin.androidInfo,
        );
      case TargetPlatform.iOS:
        return IosDeviceInfoModel.fromIosDeviceInfo(
          await deviceInfoPlugin.iosInfo,
        );
      case TargetPlatform.linux:
        return LinuxDeviceInfoModel.fromLinuxDeviceInfo(
          await deviceInfoPlugin.linuxInfo,
        );
      case TargetPlatform.windows:
        return WindowsDeviceInfoModel.fromWindowsDeviceInfo(
          await deviceInfoPlugin.windowsInfo,
        );
      case TargetPlatform.macOS:
        return MacOsDeviceInfoModel.fromMacOsDeviceInfo(
          await deviceInfoPlugin.macOsInfo,
        );
      case TargetPlatform.fuchsia:
        return <String, dynamic>{
          'Error:': 'Fuchsia platform isn\'t supported',
        };
    }
  }
}
