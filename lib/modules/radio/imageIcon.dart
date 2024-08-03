import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';

// ignore: must_be_immutable
class ImageIconCustom extends StatelessWidget {
  String iamgePath;
  ImageIconCustom({super.key, required this.iamgePath});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return ImageIcon(
        size: 44,
        color: provider.isDark()
            ? theme.primaryColorDark
            : const Color(0xffB7935F),
        AssetImage(iamgePath));
  }
}
