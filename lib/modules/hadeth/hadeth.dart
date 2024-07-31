import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/modules/hadeth/hadithView.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) loadHadithData();
    var theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
          scale: 1.2,
        ),
        Divider(),
        Text(
          'الأحاديث',
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadithviewDetalis.routeName,
                  arguments: hadithList[index],
                );
              },
              child: Text(
                hadithList[index].title,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: hadithList.length,
          ),
        )
      ],
    );
  }

  String singleHadeth = '';
  List<HadeitData> hadithList = [];
  Future<void> loadHadithData() async {
    String content =
        await rootBundle.loadString('assets/hadeth_data/ahadeth.txt');
    List<String> allHadethDataList = content.split('#');

    for (int i = 0; i < allHadethDataList.length; i++) {
      singleHadeth = allHadethDataList[i].trim();
      int titleLength = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, titleLength);
      setState(() {});
      String bodyHadith = singleHadeth.substring(titleLength + 1);
      HadeitData hadeitData = HadeitData(title: title, body: bodyHadith);
      hadithList.add(hadeitData);
    }
  }
}

class HadeitData {
  final String title;
  final String body;
  HadeitData({required this.title, required this.body});
}
