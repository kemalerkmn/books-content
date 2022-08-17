// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

class HeaderswithSearch extends StatelessWidget {
  const HeaderswithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.24,
      child: Stack(children: [
        Container(
          padding: PaddingUtiliy.horizanalPadding,
          height: size.height * 0.24 - 30,
          decoration: const BoxDecoration(
              color: ColorsUtiliy.primaryColor,
              borderRadius: RadiusUtiliy.onlyRadius),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hi Reader!",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white)),
              const Avatar(
                profilImage: "assets/images/profil/profil.jpeg",
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            margin: PaddingUtiliy.horizanalPadding / 2,
            padding: PaddingUtiliy.horizanalPadding / 2,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            height: 54,
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: ColorsUtiliy.primaryColor.withOpacity(0.5),
                        ),
                        enabledBorder:
                            InputBorder.none, // alt çizginin gitmesini sağlar
                        focusedBorder: InputBorder
                            .none, // focuslandığı zaman alt çizgi çıkar
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg")
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.profilImage,
  }) : super(key: key);

  final String profilImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          color: ColorsUtiliy.avatarColor,
          borderRadius: RadiusUtiliy.defaultRadius * 3),
      child: Padding(
        padding: PaddingUtiliy.avatarPadding,
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(profilImage),
        ),
      ),
    );
  }
}
