import 'package:asocapp/core/common/models/device_model.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GlobalVariablesEntity {
  final String apiUrl;
  final String appVersion;
  final PackageInfo info;
  final DeviceModel device;

  GlobalVariablesEntity({
    required this.info,
    required this.device,
    required this.apiUrl,
    required this.appVersion,
  });
}
