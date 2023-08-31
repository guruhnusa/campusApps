import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class IconsHomePage extends StatelessWidget {
  final Iconify icondata;

  const IconsHomePage({super.key, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFF2B5278),
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: 50,
        ),
        Container(
          height: 30,
          width: 30,
          color: const Color(0xFF2B5278),
          child: icondata,
        ),
      ],
    );
  }
}