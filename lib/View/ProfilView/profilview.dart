// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:plant_app/View/HomeView/Details/listview_plant_cards.dart';
import 'package:plant_app/View/HomeView/Details/text_and_more_button.dart';
import 'package:plant_app/View/ProfilView/Details/headersProfil.dart';

class ProfilView extends StatefulWidget {
  ProfilView({Key? key}) : super(key: key);

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadersProfil(size: size),
            TextandMoreButton(
              text: "My is Context",
              press: () {},
            ),
            ListViewBookCards(size: size),
          ],
        ),
      ),
    );
  }
}
