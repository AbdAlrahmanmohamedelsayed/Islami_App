import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counterSebha = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        counterSebha++;
        if (counterSebha > 99) {
          counterSebha = 0;
        }
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/head_sebha_logo.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/body_sebha_logo.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'عدد التسبيحات',
              style: theme.bodyLarge,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 100,
            decoration: BoxDecoration(
                color: const Color(0xffc6b69a),
                borderRadius: BorderRadius.circular(15)),
            child: Text('$counterSebha', style: theme.bodyMedium),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffB7935F),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
                counterSebha <= 33
                    ? 'سبحان الله'
                    : counterSebha <= 66
                        ? 'الحمد لله'
                        : 'لا اله الا الله',
                style: theme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
