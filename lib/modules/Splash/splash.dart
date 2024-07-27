import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/LayOut/layout.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LayOutView.routeName,
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.png',
      fit: BoxFit.cover,
    );
  }
}
