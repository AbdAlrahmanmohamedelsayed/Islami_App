import 'package:flutter/material.dart';
import 'package:islamic_app/modules/LayOut/layout.dart';
import 'package:islamic_app/core/Applications_Theme_Manager.dart';
import 'package:islamic_app/modules/Splash/splash.dart';
import 'package:islamic_app/modules/hadeth/hadithView.dart';
import 'package:islamic_app/modules/quran/quran_details_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      initialRoute: '/',
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutView.routeName: (context) => const LayOutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
        HadithviewDetalis.routeName: (context) => const HadithviewDetalis()
      },
    );
  }
}
