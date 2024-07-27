import 'package:flutter/material.dart';
import 'package:islamic_app/LayOut/layout.dart';
import 'package:islamic_app/core/Applications_Theme_Manager.dart';
import 'package:islamic_app/modules/Splash/splash.dart';
import 'package:islamic_app/modules/quran/quran_details_view.dart';

void main() {
  runApp(const IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationsThemeManager.lightThemeManager,
      initialRoute: '/',
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutView.routeName: (context) => const LayOutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView()
      },
    );
  }
}
