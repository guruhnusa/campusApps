import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class RecommendUniv extends StatelessWidget {
  const RecommendUniv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 110,
          width: 110,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Univ2.png"),
                  fit: BoxFit.contain)),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 110,
          width: 220,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "London School of Public Relations (LSPR)",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Iconify(
                    Fa6Solid.ranking_star,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "S1 | S2 | S3",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Iconify(
                    MaterialSymbols.calendar_month_outline_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "16 Juli - 31 Agustus 2023",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
