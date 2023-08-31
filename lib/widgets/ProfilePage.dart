import 'package:clone_inspace/pages/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/pajamas.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

import 'ListProfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 28,
            )),
        title: const Text("Profil",
            style: TextStyle(
              color: Color(0xFF1D222D),
              fontSize: 20,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w600,
            )),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(80)),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/profile.png"),
                      fit: BoxFit.contain)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text("Yanuarin Salwa Afranita",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text("salwa@gmail.com",
                style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: SizedBox(
              height: 40,
              width: 187,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2B5278),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const ListProfile(
              leadingProfile: Iconify(Mdi.file_document_outline, size: 25),
              titleProfile:
                  Text("Dokumen Pendaftaran", style: TextStyle(fontSize: 18)),
              trailingProfile:
                  Iconify(Ic.round_keyboard_arrow_right, size: 28)),
          const ListProfile(
              leadingProfile: Iconify(Pajamas.status, size: 25),
              titleProfile:
                  Text("Status Pendaftaran", style: TextStyle(fontSize: 18)),
              trailingProfile:
                  Iconify(Ic.round_keyboard_arrow_right, size: 28)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Image(
              image: AssetImage("assets/images/Line2.png"),
            ),
          ),
          const ListProfile(
              leadingProfile: Iconify(Carbon.user_certification, size: 25),
              titleProfile:
                  Text("Keamaan Akun", style: TextStyle(fontSize: 18)),
              trailingProfile:
                  Iconify(Ic.round_keyboard_arrow_right, size: 28)),
          const ListProfile(
              leadingProfile: Iconify(
                  MaterialSymbols.error_circle_rounded_outline,
                  size: 27),
              titleProfile:
                  Text("Tentang Kami", style: TextStyle(fontSize: 18)),
              trailingProfile:
                  Iconify(Ic.round_keyboard_arrow_right, size: 28)
          ),
          const ListProfile(
              leadingProfile: Iconify(
                  Ic.baseline_help_outline,
                  size: 27),
              titleProfile:
              Text("Bantuan", style: TextStyle(fontSize: 18)),
              trailingProfile:
              Iconify(Ic.round_keyboard_arrow_right, size: 28)
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Image(
              image: AssetImage("assets/images/Line2.png"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoarding(),));
            },
            child: const ListProfile(
                leadingProfile: Iconify(
                  color: Colors.red,
                    MaterialSymbols.logout,
                    size: 27),
                titleProfile:
                Text("Keluar", style: TextStyle(fontSize: 18)),
                trailingProfile:
                Iconify(Ic.round_keyboard_arrow_right, size: 28)
            ),
          ),
        ],
      ),
    );
  }
}


