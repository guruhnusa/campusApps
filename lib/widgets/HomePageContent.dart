import 'package:clone_inspace/pages/UnivBinus.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:iconify_flutter/icons/vaadin.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import '../widgets/CardsUniv.dart';
import '../widgets/IconHomePage.dart';
import '../widgets/RecommendUniv.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                backgroundColor: Colors.grey,
                radius: 23,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Halo, Yanuarin Salwa !",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 22, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Siap Menempuh Kampus",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF2B5278))),
              Text("impianmu?",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      height: 1.5,
                      color: Color(0xFF2B5278))),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: TextField(
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF2B5278), width: 2),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF2B5278), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
                label: const Text("Cari Kampus"),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 35,
                  color: Colors.black,
                )),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconsHomePage(
                icondata: Iconify(Majesticons.location_marker_line,
                    size: 4, color: Colors.white),
              ),
              IconsHomePage(
                icondata: Iconify(Uiw.like_o, size: 4, color: Colors.white),
              ),
              IconsHomePage(
                icondata: Iconify(Vaadin.medal, size: 4, color: Colors.white),
              ),
              IconsHomePage(
                icondata: Iconify(MaterialSymbols.school_outline_rounded,
                    size: 4, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Universitas Unggulan",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF2B5278)),
              ),
              Row(
                children: [
                  Text(
                    "Selengkapnya",
                    style:
                        TextStyle(fontSize: 14, color: Color(0xFFA52E45)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 18,
                    color: Color(0xFFA52E45),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 230,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:  Row(
                children: [
                  const CardsUniv(
                      UnivImage: AssetImage("assets/images/Univ1.png"),
                      NameUniv: "Universitas Pelita Harapan"),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UnivBinus(),));
                    },
                      child: const CardsUniv(
                          UnivImage: AssetImage("assets/images/Univ3.png"),
                          NameUniv: "Universitas Bina Nusantara"))
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 23, right: 20, bottom: 10),
          child: Text(
            "Rekomendasi untuk Anda",
            style: TextStyle(
                fontSize: 23,
                color: Color(0xFF2B5278),
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, right: 20),
          child: Container(
            height: 220,
            decoration: BoxDecoration(
                color: const Color(0xFF2B5278),
                borderRadius: BorderRadius.circular(15)),
            child: const Column(
              children: [
                RecommendUniv(),
                RecommendUniv(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
