import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class Settingview extends StatefulWidget {
  const Settingview({super.key});

  @override
  State<Settingview> createState() => _SettingviewState();
}

class _SettingviewState extends State<Settingview> {
  var languageList = ['English', 'عربي'];
  var themeLit = ['Light', 'Dark'];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
            hintText: 'Select Language App',
            items: languageList,
            // initialItem: _list[0],
            onChanged: (value) {
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
            hintText: 'Select Language App',
            items: themeLit,
            // initialItem: _list[0],
            onChanged: (value) {
              log('changing value to: $value');
            },
          ),
        ],
      ),
    );
  }
}
