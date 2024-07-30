import 'package:flutter/material.dart';
import 'package:islamic_app/modules/hadeth/hadeth.dart';

class HadithviewDetalis extends StatelessWidget {
  static String routeName = 'HadithviewDetalis';
  const HadithviewDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as HadeitData;
    var theme = Theme.of(context);
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
              Text(
                '${data.title}  ',
                style: theme.textTheme.bodyMedium,
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 3,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1.8),
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
