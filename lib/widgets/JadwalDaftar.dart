import 'package:flutter/material.dart';

class JadwalDaftar extends StatelessWidget {
  final String TextLeft;
  final String TextRight;

  const JadwalDaftar(
      {super.key, required this.TextLeft, required this.TextRight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xFFEBEBEB),
                  border: Border.all(color: const Color(0xFF2B5278), width: 1.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Text(
                  TextRight,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              )),
          Container(
            height: 40,
            width: 190,
            decoration: BoxDecoration(
                color: const Color(0xFF2B5278),
                border: Border.all(color: const Color(0xFF2B5278), width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                TextLeft,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
