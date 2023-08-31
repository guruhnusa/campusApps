import 'package:clone_inspace/pages/LoginPage.dart';
import 'package:clone_inspace/pages/Verify.dart';
import 'package:flutter/material.dart';
import '../widgets/OtpNumber.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({super.key});

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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerifyLogin(),
                  ));
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
        padding: const EdgeInsets.all(20),
        children: [
          const Center(
              child: Text(
            "Masukan OTP yang dikirimkan ke",
            style: TextStyle(fontSize: 16),
          )),
          const Center(
              child: Text(
            "+628272280701",
            style: TextStyle(fontSize: 16),
          )),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(right: 35, left: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpNumber(),
                OtpNumber(),
                OtpNumber(),
                OtpNumber(),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          const Center(child: Text("Kode OTP tidak diterima?",style: TextStyle(fontSize: 16),)),
          const Center(child: Text("KIRIM ULANG",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,height: 1.5),)),
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: const Text("Lanjut",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
          ),
        ],
      ),
    );
  }
}
