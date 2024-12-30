import 'dart:async';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:notify_pod_flutter/src/models/android/android_device_info.dart';
import 'package:notify_pod_flutter/src/models/ios/ios_device_info.dart';
import 'package:notify_pod_flutter/src/models/linux/linux_device_info.dart';
import 'package:notify_pod_flutter/src/models/macOs/macos_device_info.dart';
import 'package:notify_pod_flutter/src/models/weBrowser/web_browser_device_info.dart';
import 'package:notify_pod_flutter/src/models/windows/windows_device_info.dart';
import 'package:notify_pod_flutter/src/utils/get_device_info_model.dart';

Future<String> getDeviceId() async {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  dynamic deviceData;
  try {
    deviceData = await getDeviceInfoModel(deviceInfoPlugin);
  } on PlatformException {
    return 'Error: Failed to get platform version.';
  }
  if (deviceData is AndroidDeviceInfoModel) {
    return deviceData.fingerprint;
  } else if (deviceData is IosDeviceInfoModel) {
    return deviceData.identifierForVendor ??
        '''Unknown-identifier+${DateTime.now().millisecondsSinceEpoch}
        +${deviceData.name}''';
  } else if (deviceData is LinuxDeviceInfoModel) {
    return deviceData.machineId ??
        '''Unknown-machine${DateTime.now().millisecondsSinceEpoch}
        +${deviceData.name}''';
  } else if (deviceData is WebBrowserInfoModel) {
    return deviceData.userAgent ??
        '''Unknown-user-agent${DateTime.now().millisecondsSinceEpoch}
        +${deviceData.browserName}''';
  } else if (deviceData is MacOsDeviceInfoModel) {
    return deviceData.systemGUID ??
        '''Unknown-system-GUID${DateTime.now().millisecondsSinceEpoch}
        +${deviceData.computerName}''';
  } else if (deviceData is WindowsDeviceInfoModel) {
    return deviceData.deviceId;
  } else {
    return 'Unknown device';
  }
}
