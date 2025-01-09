import 'package:asocapp/core/config/constants/egl_constants.dart';
import 'package:asocapp/core/config/global/app_config_globals.dart';

class EglImagesPath {
  static String appIconUserDefault = '';
  static String appCoverDefault = '';

  EglImagesPath() {
    appIconUserDefault = getAppIconUserDefault();
    appCoverDefault = getCoverDefault();
  }

  static const String lightAppLogo = 'assets/images/eglos_logo.png';
  static const String darkAppLogo = 'assets/images/eglos_logo.png';

  static const String nameIconUserDefaultProfile = 'icons_user_profile_circle.png';
  static const String iconUserDefaultProfile = 'assets/images/$nameIconUserDefaultProfile';
  static const String coverDefault = 'assets/images/camara1.png';

  static const String iconBackgroundDrawer =
      'https://thumbs.dreamstime.com/b/vista-del-paisaje-mediterr%C3%A1neo-hermoso-del-mar-y-del-cielo-soleado-67838267.jpg';

  static String getAppIconUserDefault() {
    String apiURL = AppConfigGlobals().apiUrl;
    final appIconUserDefault = Uri.parse("${EglConstants.protocol}$apiURL/$iconUserDefaultProfile").toString();
    return appIconUserDefault;
  }

  static String getCoverDefault() {
    String apiURL = AppConfigGlobals().apiUrl;
    final appCoverDefault = Uri.parse("${EglConstants.protocol}$apiURL/$coverDefault").toString();
    return appCoverDefault;
  }
}
