import 'package:asocapp/core/common/entities/global_variables_entity.dart';
import 'package:asocapp/core/common/models/device_model.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppConfigGlobals {
  static final AppConfigGlobals _instance = AppConfigGlobals._internal();

  factory AppConfigGlobals() => _instance;

  AppConfigGlobals._internal();

  late String apiUrl;
  late String appVersion;
  late PackageInfo info;
  late DeviceModel device;

  void initialize(GlobalVariablesEntity config) {
    apiUrl = config.apiUrl;
    appVersion = config.appVersion;
    info = config.info;
    device = config.device;
  }
}
