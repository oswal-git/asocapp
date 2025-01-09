import 'package:asocapp/core/theme/app_font_style.dart';
import 'package:asocapp/core/utils/extensions.dart';
import 'package:asocapp/features/auth/presentation/widgets/egl_form_ui_widget.dart';
import 'package:asocapp/generated/l10n.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        title: Text(S.of(context).tRegisterUser),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                4.ph,
                Text(
                  S.of(context).tWelcom,
                  style: AppFontStyle.bold16,
                ),
                Text(
                  textAlign: TextAlign.center,
                  S.of(context).tWelcomRegister,
                  style: AppFontStyle.semibold14.copyWith(height: 1.3),
                ),
                8.ph,
                EglFormUIWidget(context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
