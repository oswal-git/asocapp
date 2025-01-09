import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

Future<bool> fingerAuthLogin(BuildContext context) async {
  final LocalAuthentication localAuthentication = LocalAuthentication();
  bool didAuthenticated = false;

  try {
    didAuthenticated = await localAuthentication.authenticate(
      localizedReason: 'Ingresa tu huella para validar identidad',
      options: const AuthenticationOptions(biometricOnly: true, useErrorDialogs: false),
    );
  } on PlatformException catch (e) {
    if (e.code == auth_error.notAvailable) {
      // Add handling of no hardware here.
      // logger.finest("Device don't support fingerprint authorization");
    } else if (e.code == auth_error.notEnrolled) {
      // ...
      // logger.finest("Fingerprint not registered");
    } else {
      // ...
      // logger.finest("Error on check fingerprint authorization");
    }
  }

  return didAuthenticated;
}
