import 'package:flutter/material.dart';
import 'package:islamic_app/modules/Settings/Settingview.dart';
import 'package:islamic_app/modules/hadeth/hadeth.dart';
import 'package:islamic_app/modules/quran/quran.dart';
import 'package:islamic_app/modules/radio/radio.dart';
import 'package:islamic_app/modules/sebha/sebha.dart';

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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
        ),
        body: screens[selctedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selctedIndex,
          onTap: (value) {
            selctedIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: 'quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: 'hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: 'sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
