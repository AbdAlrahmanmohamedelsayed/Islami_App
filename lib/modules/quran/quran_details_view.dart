import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const routeName = 'quranDetalisView';
  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
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
            color: const Color(0xffF8F8F8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة البقرة ',
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
            ],
          ),
        ),
      ),
    );
  }
}
