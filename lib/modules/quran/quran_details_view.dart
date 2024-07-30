import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/modules/quran/quran.dart';

class QuranDetailsView extends StatefulWidget {
  static const routeName = 'quranDetalisView';
  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as DataSurah;
    if (content.isEmpty) loadData(data.suraNumber);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
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
            color: const Color(0xffF8F8F8).withOpacity(.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة ${data.surahName} ',
                    style: theme.textTheme.bodyMedium,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle_filled_outlined)),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 3,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    textAlign: TextAlign.center,
                    '(${index + 1}) ${versesList[index]} ',
                    style: theme.textTheme.bodyMedium?.copyWith(height: 1.8),
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
    print(content);
    setState(() {});
  }
}
