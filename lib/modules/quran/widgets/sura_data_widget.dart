// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:islamic_app/modules/quran/quran.dart';

// ignore: must_be_immutable
class SuraDataWidget extends StatelessWidget {
  DataSurah data;
  SuraDataWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            data.suraNumber,
            style: theme.textTheme.bodyMedium,
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
            data.surahName,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
