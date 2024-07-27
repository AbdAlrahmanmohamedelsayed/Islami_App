import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageIconCustom extends StatelessWidget {
  String iamgePath;
  ImageIconCustom({super.key, required this.iamgePath});

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
        size: 40, color: const Color(0xffB7935F), AssetImage(iamgePath));
  }
}
