// ignore_for_file: prefer_const_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/View/HomeView/home_view.dart';
import 'package:plant_app/View/ProfilView/profilview.dart';

import 'details/drawer.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  @override
  State<NavigatorView> createState() => _HomeViewState();
}

class _HomeViewState extends State<NavigatorView> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text("kemal"),
    ProfilView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorsUtiliy.primaryColor,
          leading: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      drawer: drawerMenu(context),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: MyBottomNavigatorBar(size: size),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: ColorsUtiliy.primaryColor.withOpacity(0.38))
        ]),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg",
                  height: 24, width: 24, color: ColorsUtiliy.inactiveColor),
              label: 'Home',
              activeIcon: SvgPicture.asset("assets/icons/home.svg",
                  height: 24, width: 24, color: ColorsUtiliy.avatarColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/user-icon.svg",
                height: 24,
                width: 24,
              ),
              label: 'My Profil',
              activeIcon: SvgPicture.asset("assets/icons/user-icon.svg",
                  height: 24, width: 24, color: ColorsUtiliy.avatarColor),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorsUtiliy.bgsecColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
