// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';
import 'package:plant_app/View/HomeView/Details/headers_with_search.dart';

class HeadersProfil extends StatelessWidget {
  const HeadersProfil({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.28,
      child: Column(
        children: [
          Container(
            padding: PaddingUtiliy.horizanalPadding,
            height: size.height * 0.20,
            decoration: const BoxDecoration(
                color: ColorsUtiliy.primaryColor,
                borderRadius: RadiusUtiliy.onlyRadius),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hi Kemal!",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white)),
                const Avatar(profilImage: "assets/images/profil/profil.jpeg")
              ],
            ),
          ),
          Container(
              alignment: Alignment.topRight,
              margin: PaddingUtiliy.horizanalPadding / 2,
              padding: PaddingUtiliy.horizanalPadding / 2,
              decoration:
                  BoxDecoration(borderRadius: RadiusUtiliy.defaultRadius / 2),
              height: 50,
              child: Expanded(
                child: Stack(
                  children: [
                    Text(
                      "kemal erkmen",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 7,
                        color: ColorsUtiliy.primaryColor.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
