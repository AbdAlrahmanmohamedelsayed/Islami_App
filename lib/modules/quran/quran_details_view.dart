import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:islamic_app/modules/quran/quran.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const routeName = 'quranDetalisView';
  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as DataSurah;
    if (content.isEmpty) loadData(data.suraNumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getHomeBackGround()),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
          leading: BackButton(
              color: provider.isDark() ? theme.primaryColorDark : Colors.black),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 60,
            bottom: 80,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: provider.isDark()
                ? const Color(0xff141A2E).withOpacity(.8)
                : const Color(0xffF8F8F8).withOpacity(.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة ${data.surahName} ',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_filled_outlined,
                        color: provider.isDark()
                            ? theme.primaryColorDark
                            : Colors.black,
                      )),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    textAlign: TextAlign.center,
                    '(${index + 1}) ${versesList[index]} ',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      height: 1.8,
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String content = '';
  List<String> versesList = [];
  Future<void> loadData(String suraNumber) async {
    content = await rootBundle.loadString('assets/quran_data/$suraNumber.txt');
    versesList = content.split('\n');

    setState(() {});
  }
}
