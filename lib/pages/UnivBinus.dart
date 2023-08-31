import 'package:clone_inspace/pages/HomePage.dart';
import 'package:flutter/material.dart';

import '../widgets/JadwalDaftar.dart';

class UnivBinus extends StatelessWidget {
  const UnivBinus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 28,
            )),
        title: const Text("Universitas Bina Nusantara",
            style: TextStyle(
              color: Color(0xFF1D222D),
              fontSize: 20,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w600,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 180,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Univ3.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Text(
              "Jadwal Pendaftaran",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Column(
            children: [
              JadwalDaftar(
                  TextLeft: "Pendaftaran", TextRight: "9 - 25 Agustus 2023"),
              SizedBox(
                height: 5,
              ),
              JadwalDaftar(
                  TextLeft: "Test Masuk", TextRight: "26 Agustus 2023"),
              SizedBox(
                height: 5,
              ),
              JadwalDaftar(
                  TextLeft: "Pengumuman Hasil Test",
                  TextRight: "30 Agustus 2023"),
              SizedBox(
                height: 5,
              ),
              JadwalDaftar(
                  TextLeft: "Pembayaran", TextRight: "6 September 2023")
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Prosedur Pendaftaran",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                  color: const Color(0xFFEBEBEB),
                  border: Border.all(color: const Color(0xFF2B5278), width: 1.5),
                  borderRadius: BorderRadius.circular(10)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. Pemesanan pendaftaran.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("2. Melengkapi data beasiswa.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("3. Memilih jenis pendaftaran.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("4. Mengunggah dokumen.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("5. Memilih jadwal test.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("6. Menyeleasikan pendaftaran.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("7. Pembayaran pendaftaran.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("8. Menyetujui surat pernyataan calon mahasiswa.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("9. Menunggu verifikasi.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text("10. Mengunduh kartu test.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                  Text(
                      "11. Mengikuti tes potensi keberhasilan studi sesuai jadwal yang ditentukan.",
                      style: TextStyle(fontSize: 15, height: 1.5)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Biaya Pendaftaran",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 200,
                  height: 33,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      border: Border.all(color: const Color(0xFF2B5278)),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Rp. 300.000,00",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFA52E45))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2B5278),
                      border: Border.all(color: const Color(0xFF2B5278)),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Daftar Sekarang",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                ),
                Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFF2B5278), width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Kunjungi Website",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF2B5278))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

