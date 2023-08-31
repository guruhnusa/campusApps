import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class BottomNabar extends StatefulWidget {
  const BottomNabar({super.key});

  @override
  State<BottomNabar> createState() => _BottomNabarState();
}

class _BottomNabarState extends State<BottomNabar> {
  final controler = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Text("Profil")];
  }



  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 35,
          icon: const Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey),

      PersistentBottomNavBarItem(
          iconSize: 35,
          icon: const Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: const Color(0xFFB7B7B7)
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(

      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor:Colors.white,
      navBarStyle: NavBarStyle.style13,
      navBarHeight: 70,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
        border: Border.all(color: const Color(0xFFB7B7B7),width: 1.5),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
      ),
    );
  }
}


