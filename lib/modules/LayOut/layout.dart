import 'package:flutter/material.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:islamic_app/modules/Settings/Settingview.dart';
import 'package:islamic_app/modules/hadeth/hadeth.dart';
import 'package:islamic_app/modules/quran/quran.dart';
import 'package:islamic_app/modules/radio/radio.dart';
import 'package:islamic_app/modules/sebha/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LayOutView extends StatefulWidget {
  static const String routeName = 'LayOut';
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int selctedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    const SebhaView(),
    const RadioView(),
    const Settingview()
  ];
  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getHomeBackGround()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
        ),
        body: screens[selctedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selctedIndex,
          onTap: (value) {
            selctedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: lang.quran),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png')),
                label: lang.hadith),
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: lang.tasbeh),
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: lang.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: lang.settings),
          ],
        ),
      ),
    );
  }
}
