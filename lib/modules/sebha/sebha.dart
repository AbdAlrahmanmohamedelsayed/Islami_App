import 'package:flutter/material.dart';
import 'package:islamic_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counterSebha = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return GestureDetector(
      onTap: () {
        counterSebha++;
        if (counterSebha > 99) {
          counterSebha = 0;
        }
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                provider.isDark()
                    ? 'assets/images/head_sebha_dark.png'
                    : 'assets/images/head_sebha_logo.png',
                fit: BoxFit.fill,
              ),
              Image.asset(
                provider.isDark()
                    ? 'assets/images/body_sebha_dark.png'
                    : 'assets/images/body_sebha_logo.png',
                fit: BoxFit.cover,
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
            width: 100,
            height: 80,
            decoration: BoxDecoration(
                color: provider.isDark()
                    ? const Color(0xff141A2E)
                    : const Color(0xffc6b69a),
                borderRadius: BorderRadius.circular(15)),
            child: Text('$counterSebha', style: theme.textTheme.bodyMedium),
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
                child: Text(
                    counterSebha <= 33
                        ? 'سبحان الله'
                        : counterSebha <= 66
                            ? 'الحمد لله'
                            : 'لا اله الا الله',
                    style: theme.textTheme.bodyLarge),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counterSebha = 0;
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
}
