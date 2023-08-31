import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class CardsUniv extends StatelessWidget {

  final AssetImage UnivImage;
  final String NameUniv;

  const CardsUniv({
    super.key, required this.UnivImage,required this.NameUniv
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 200,
        width: 290,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: UnivImage,
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 15, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    NameUniv,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA52E45),
                        fontWeight: FontWeight.w800),
                  ),
                  const Icon(
                    Icons.notifications_none_rounded,
                    size: 25,
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 15, top: 1),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Pendaftaran: 12 Mei - 31 Agustus 2023",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF979797),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            const Row(children: [
              SizedBox(width: 15,),
              Iconify(Fa6Solid.ranking_star,size: 20,color: Color(0xFF2B5278),),
              SizedBox(width: 10,),
              Text(
                  "S1 | S2 ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      height: 2,
                      color: Color(0xFF2B5278)),),
              SizedBox(width: 20,),
              Iconify(Uil.wallet,size: 25,color: Color(0xFF2B5278),),
              SizedBox(width: 5,),
              Text("Rp. 350.000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,height: 2,color: Color(0xFF2B5278)),),
            ],)
          ],
        ),
      ),
    );
  }
}

