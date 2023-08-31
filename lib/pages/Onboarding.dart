import 'package:clone_inspace/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              reverse: true,
              decoration: const PageDecoration(
                bodyAlignment: Alignment.topLeft,
                imageAlignment: Alignment.center,
                imageFlex: 2,
                bodyFlex: 2,
                pageColor: Colors.white,
              ),
              title: "",
              bodyWidget: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Buat sebuah akun",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF2B5278),
                        )),
                    Container(
                      width: 300,
                      height: 100,
                      child: const Text("Raih Universitas Impianmu! ",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2B5278),
                              height: 1.5)),
                    )
                  ],
                ),
              ),
              footer: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Pengguna akan mendapatkan informasi pendaftaran univeritas di Indonesia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF2B5278),
                      fontWeight: FontWeight.w400),
                ),
              ),
              image: Container(
                  width: 280,
                  height: 280,
                  child: Lottie.asset("assets/images/onboarding1.json"))),
          //Page 2//
          PageViewModel(
              reverse: true,
              decoration: const PageDecoration(
                bodyAlignment: Alignment.topLeft,
                imageAlignment: Alignment.center,
                imageFlex: 2,
                bodyFlex: 2,
                pageColor: Colors.white,
              ),
              title: "",
              bodyWidget: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Masuk ke akunmu",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF2B5278),
                        )),
                    Container(
                      width: 330,
                      height: 400,
                      child: const Text("Dapatkan 100+ Informasi Universitas di Indonesia",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2B5278),
                              height: 1.5)),
                    )
                  ],
                ),
              ),
              footer: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Terdapat 100+ informasi univeritas di Indonesia yang akan didapatkan oleh pengguna ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF2B5278),
                      fontWeight: FontWeight.w400),
                ),
              ),
              image: Container(
                  width: 280,
                  height: 280,
                  child: Lottie.asset("assets/images/onboarding2.json"))),
          //Page 3//
          PageViewModel(
              reverse: true,
              decoration: const PageDecoration(
                bodyAlignment: Alignment.topLeft,
                imageAlignment: Alignment.center,
                imageFlex: 2,
                bodyFlex: 2,
                pageColor: Colors.white,
              ),
              title: "",
              bodyWidget: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Masuk ke akunmu",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF2B5278),
                        )),
                    Container(
                      width: 300,
                      height: 400,
                      child: const Text("Kemudahan Proses Pendaftaran Kampus Impian",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2B5278),
                              height: 1.5)),
                    )
                  ],
                ),
              ),
              footer: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Unggah dokumen yang diperlukan dalam sekali tahap dan daftar ke berbagai univeritas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF2B5278),
                      fontWeight: FontWeight.w400),
                ),
              ),
              image: Container(
                  width: 280,
                  height: 280,
                  child: Lottie.asset("assets/images/onboarding3.json"))),
        ],
        showBackButton: true,
        back: const Text("Lewati",
            style: TextStyle(
                color: Color(0XFF2B5278),
                fontWeight: FontWeight.w800,
                fontSize: 16)),
        next: const Text("Selanjutnya",
            style: TextStyle(
                color: Color(0XFF2B5278),
                fontWeight: FontWeight.w800,
                fontSize: 16)),
        done: const Text("Selanjutnya",
            style: TextStyle(
                color: Color(0XFF2B5278),
                fontWeight: FontWeight.w800,
                fontSize: 16)),
        onDone: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
        },
        controlsPadding: const EdgeInsets.symmetric(vertical: 50),
        dotsDecorator: DotsDecorator(
          activeColors: [
            const Color(0xFF2B5278),
            const Color(0xFF2B5278),
            const Color(0xFF2B5278),
          ],
          colors: [
            const Color(0xFFD9D9D9),
            const Color(0xFFD9D9D9),
            const Color(0xFFD9D9D9),
          ],
          size: const Size.square(13.0),
          activeSize: const Size(13.0, 13.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}
