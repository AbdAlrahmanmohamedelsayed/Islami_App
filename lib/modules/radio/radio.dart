import 'package:flutter/material.dart';
import 'package:islamic_app/modules/radio/imageIcon.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/radio_image.png',
          scale: 1.2,
        ),
        Align(
          alignment: Alignment.center,
          child: Text('إذاعة القرآن الكريم ', style: theme.bodyLarge),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageIconCustom(iamgePath: 'assets/images/Icon metro-next.png'),
            ImageIconCustom(iamgePath: 'assets/images/Icon awesome-play.png'),
            ImageIconCustom(iamgePath: 'assets/images/Icon metro-next (2).png'),
          ],
        )
      ],
    );
  }
}
