import 'package:clone_inspace/pages/HomePage.dart';
import 'package:clone_inspace/pages/RegisterPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:colorful_iconify_flutter/icons/logos.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,

        title: const Text("Masuk Ke Akun Anda",
            style: TextStyle(
              color: Color(0xFF1D222D),
              fontSize: 20,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w600,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text("Email",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Satoshi')),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF5FAFF),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEAECF0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: Color(0xFFEAECF0), width: 2))),
          ),
          const SizedBox(height: 20),
          const Text("Password",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Satoshi')),
          const SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF5FAFF),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEAECF0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: Color(0xFFEAECF0), width: 2))),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: const Color(0xFF2B5278),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                },
                child: const Text("Masuk",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('assets/images/line.png')),
              Text("atau Masuk dengan",
                  style: TextStyle(
                    color: Color(0xFF354152),
                    fontSize: 15,
                  )),
              Image(image: AssetImage('assets/images/line.png')),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(color: const Color(0xFFF4F5F7))),
                  ),
                  const Iconify(
                    Logos.facebook,
                    size: 30,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(color: const Color(0xFFF4F5F7))),
                  ),
                  const Iconify(
                    Logos.google_icon,
                    size: 30,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(color: const Color(0xFFF4F5F7))),
                  ),
                  const Iconify(
                    Logos.apple,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          RichText(
            text: TextSpan(
                text: 'Belum mempunyai akun? ',
                style: const TextStyle(
                  color: Color(0xFF1F2939),
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            )),
                      text: 'Daftar',
                      style: const TextStyle(
                          color: Color(0xFF2B5278),
                          fontSize: 16,
                          fontWeight: FontWeight.w800))
                ]),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
