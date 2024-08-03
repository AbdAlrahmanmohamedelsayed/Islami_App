import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settingview extends StatefulWidget {
  const Settingview({super.key});

  @override
  State<Settingview> createState() => _SettingviewState();
}

class _SettingviewState extends State<Settingview> {
  var languageList = ['عربي', 'English'];
  var themeLit = ['Light', 'Dark'];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    // var lang = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            decoration: CustomDropdownDecoration(
              closedBorderRadius: BorderRadius.circular(10),
              closedBorder: Border.all(width: 3, color: theme.primaryColorDark),
              headerStyle: theme.textTheme.bodySmall,
              closedFillColor:
                  provider.isDark() ? theme.primaryColor : Colors.white,
              expandedFillColor:
                  provider.isDark() ? theme.primaryColor : Colors.white,
              closedSuffixIcon: Icon(
                Icons.arrow_drop_down,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.arrow_drop_up,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
            hintText: 'Select Language App',
            items: languageList,
            initialItem: provider.currentLanaguageCode == 'ar'
                ? languageList[0]
                : languageList[1],
            onChanged: (value) {
              if (value == 'عربي') {
                provider.chanageLanaguageCode('ar');
              }
              if (value == 'English') {
                provider.chanageLanaguageCode('en');
              }
              log('changing value to: $value');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Theme',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            decoration: CustomDropdownDecoration(
              closedBorderRadius: BorderRadius.circular(10),
              closedBorder: Border.all(width: 3, color: theme.primaryColorDark),
              headerStyle: theme.textTheme.bodySmall,
              closedFillColor:
                  provider.isDark() ? theme.primaryColor : Colors.white,
              expandedFillColor:
                  provider.isDark() ? theme.primaryColor : Colors.white,
              closedSuffixIcon: Icon(
                Icons.arrow_drop_down,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.arrow_drop_up,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
            hintText: 'Select Theme App',
            items: themeLit,
            initialItem: provider.currentThemeMode == ThemeMode.light
                ? themeLit[0]
                : themeLit[1],
            onChanged: (value) {
              if (value == 'Light') {
                provider.chanageThemeMode(ThemeMode.light);
              }
              if (value == 'Dark') {
                provider.chanageThemeMode(ThemeMode.dark);
              }
              log('changing value to: $value');
            },
          ),
        ],
      ),
    );
  }
}
