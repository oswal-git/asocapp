import 'dart:io';

import 'package:asocapp/core/common/cubits/config/initial_config_state.dart';
import 'package:asocapp/core/common/entities/global_variables_entity.dart';
import 'package:asocapp/core/common/models/device_model.dart';
import 'package:asocapp/core/config/constants/egl_constants.dart';
import 'package:asocapp/core/config/global/app_config_globals.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class InitialConfigCubit extends Cubit<InitialConfigState> {
  InitialConfigCubit() : super(InitialConfigLoadingState());

  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  Future<void> loadInitialConfig() async {
    try {
      final PackageInfo info = await retrieveData();
      final DeviceModel device = await retrieveDevice(info);

      final config = GlobalVariablesEntity(
        info: info,
        device: device,
        apiUrl: device.isPhysicalDevice ? EglConstants.apiURLPhysicalDevice : EglConstants.apiURLEmulatorDevice,
        appVersion: '1.0',
      );
      AppConfigGlobals().initialize(config);
      emit(InitialConfigLoadedState(config));
    } catch (e) {
      emit(InitialConfigErrorState(e.toString()));
    }
  }

  Future<PackageInfo> retrieveData() async {
    return await PackageInfo.fromPlatform();
    // refreshUI();
  }

  Future<DeviceModel> retrieveDevice(PackageInfo info) async {
    if (Platform.isAndroid) {
      final AndroidDeviceInfo android = await _deviceInfoPlugin.androidInfo;
      return DeviceModel(
        id: android.id,
        model: android.model,
        appversion: info.version,
        os: 'android',
        versionOS: android.version.release,
        dateCreation: DateTime.now(),
        dateModification: null,
        dateLast: '',
        fcmToken: '',
        userId: '',
        enabled: false,
        isPhysicalDevice: android.isPhysicalDevice,
      );
      // refreshUI();
    } else {
      final IosDeviceInfo ios = await _deviceInfoPlugin.iosInfo;
      return DeviceModel(
        id: ios.identifierForVendor ?? '',
        model: ios.model,
        appversion: info.version,
        os: 'ios',
        versionOS: ios.systemVersion,
        dateCreation: DateTime.now(),
        dateModification: DateTime.now(),
        dateLast: '',
        fcmToken: '',
        userId: '',
        enabled: false,
        isPhysicalDevice: ios.isPhysicalDevice,
      );
    }
  }

  String getApiURL(bool isPhysicalDevice) {
    String apiURL = isPhysicalDevice ? EglConstants.apiURLPhysicalDevice : EglConstants.apiURLEmulatorDevice;
    return apiURL;
  }
}
