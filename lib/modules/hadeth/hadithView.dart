import 'package:flutter/material.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:islamic_app/modules/hadeth/hadeth.dart';
import 'package:provider/provider.dart';

class HadithviewDetalis extends StatelessWidget {
  static String routeName = 'HadithviewDetalis';
  const HadithviewDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as HadeitData;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
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
              Text(
                '${data.title}  ',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color:
                      provider.isDark() ? theme.primaryColorDark : Colors.black,
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        height: 1.8,
                        color: provider.isDark()
                            ? theme.primaryColorDark
                            : Colors.black,
                      ),
                      data.body),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
