import 'package:clone_inspace/pages/Auth.dart';
import 'package:clone_inspace/pages/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/twemoji.dart';
import 'package:iconify_flutter/icons/ic.dart';

class VerifyLogin extends StatelessWidget {
  const VerifyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
                size: 28,
              )),
          title: const Text("Verifikasi Nomer Telepon",
              style: TextStyle(
                color: Color(0xFF1D222D),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 20,right: 20),
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                      height: 330,
                      child: Lottie.asset('assets/images/verif.json')),
                  const Column(
                    children: [
                      Text("Masukan nomor telepon untuk",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      Text("menyelesaikan pendaftaran!",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 39,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFEAECF0))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Iconify(Twemoji.flag_indonesia),
                      Text(
                        "+62",
                        style: TextStyle(fontSize: 16),
                      ),
                      Iconify(Ic.baseline_keyboard_arrow_down)
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 36,
                  width: 88,
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Dengan masuk atau mendaftar, saya menyetuju ',
                    style: TextStyle(color: Color(0xFF475467)),
                    children: [
                      TextSpan(
                          text: 'Ketentuan',
                          style: TextStyle(
                              color: Color(0xFF1570EF),
                              decoration: TextDecoration.underline)),
                    ])),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Pengguna',
                    style: TextStyle(
                        color: Color(0xFF1570EF),
                        decoration: TextDecoration.underline),
                    children: [
                      TextSpan(
                        text: ' dan ',
                        style: TextStyle(
                            color: Color(0xFF475467),
                            decoration: TextDecoration.none),
                      ),
                      TextSpan(
                        text: 'Kebijakan Privasi Kids First',
                        style: TextStyle(
                            color: Color(0xFF1570EF),
                            decoration: TextDecoration.underline),
                      )
                    ])),
            const SizedBox(height: 20,),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: const Color(0xFF2B5278),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AuthLogin(),));
                  },
                  child: const Text("Lanjut",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
            ),
          ],
        ));
  }
}
