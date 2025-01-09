// ignore_for_file: prefer_const_constructors

import 'package:asocapp/core/config/constants/egl_images_path.dart';
import 'package:asocapp/core/theme/app_font_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter Demo Home Page'),
      // ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(EglImagesPath.lightAppLogo),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text('Eglos', style: AppFontStyle.semibold14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppFonts {}
