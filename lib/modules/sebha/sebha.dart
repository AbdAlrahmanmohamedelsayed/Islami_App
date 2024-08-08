import 'package:flutter/material.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> texts = ['سبحان الله ', 'لا اله الا الله', 'الحمد لله'];
  double angle = 0.0;
  int counterSebha = 0;
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: onClickSebha,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  provider.isDark()
                      ? 'assets/images/head_sebha_dark.png'
                      : 'assets/images/head_sebha_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              Transform.rotate(
                angle: angle,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Image.asset(
                    provider.isDark()
                        ? 'assets/images/body_sebha_dark.png'
                        : 'assets/images/body_sebha_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'عدد التسبيحات',
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                color: provider.isDark()
                    ? const Color(0xff141A2E)
                    : const Color(0xffc6b69a),
                borderRadius: BorderRadius.circular(15)),
            child: Text('$counterSebha', style: theme.textTheme.bodyLarge),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 33,
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.all(12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: provider.isDark()
                        ? theme.primaryColorDark
                        : const Color(0xffc6b69a),
                    borderRadius: BorderRadius.circular(15)),
                child:
                    Text(texts[curentIndex], style: theme.textTheme.bodyLarge),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counterSebha = 0;
                      curentIndex = 0;
                    });
                  },
                  icon: Icon(
                      size: 44,
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : theme.primaryColor,
                      Icons.restart_alt)),
            ],
          ),
        ],
      ),
    );
  }

  void onClickSebha() {
    counterSebha++;
    angle += 10;
    if (counterSebha == 33) {
      curentIndex++;
      counterSebha = 0;
      curentIndex = curentIndex % 3;
    }
    setState(() {});
  }
}
