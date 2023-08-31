import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpNumber extends StatelessWidget {
  const OtpNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(18),
      elevation: 3,
      child: SizedBox(
        height: 65,
        width: 65,
        child: TextField(
          decoration:
          InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF2F4F7),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
              const BorderSide(width: 1, color: Color(0xFFE4E6E9)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
              const BorderSide(width: 1, color: Color(0xFFE4E6E9)),
            ),
          ),
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              height: 0.9,
              color: Color(0xFF1570EF)),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [

            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}