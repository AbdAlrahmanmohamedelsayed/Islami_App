import 'package:flutter/material.dart';
import 'package:islamic_app/modules/quran/quran_details_view.dart';
import 'package:islamic_app/modules/quran/widgets/sura_data_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'القران الكريم ',
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Image.asset(
          'assets/images/qur2an_screen_logo.png',
        ),
        Divider(
          color: theme.dividerTheme.color,
          thickness: 3,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                'رقم السورة',
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: 60,
              child: VerticalDivider(
                thickness: 3,
                color: theme.primaryColor,
              ),
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                'اسم السورة',
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        Divider(
          color: theme.dividerTheme.color,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: suraName.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetailsView.routeName,
                  arguments: DataSurah(
                      surahName: suraName[index],
                      suraNumber: (index + 1).toString()),
                );
              },
              child: SuraDataWidget(
                data: DataSurah(
                    surahName: suraName[index],
                    suraNumber: (index + 1).toString()),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DataSurah {
  String surahName;
  String suraNumber;
  DataSurah({required this.surahName, required this.suraNumber});
}
