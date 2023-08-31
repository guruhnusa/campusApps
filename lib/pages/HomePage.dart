import 'package:flutter/material.dart';
import '../widgets/HomePageContent.dart';
import '../widgets/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index = 0;

  List showWidget = [const HomePageContent(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: showWidget[index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
              shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2.5,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Colors.black.withOpacity(0.10000000149011612),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          )),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
                currentIndex: index,
                onTap: (value) {
                  setState(() {
                    index = value;
                    print(index);
                  });
                },

                backgroundColor: Colors.white,
                selectedItemColor: Colors.black,
                unselectedItemColor: const Color(0xFFB7B7B7),
                unselectedIconTheme: const IconThemeData(
                  size: 30,
                  color: Color(0xFFB7B7B7),
                ),
                items: [
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile")
                ]),
          ),
        ),
      ),
    );
  }
}