import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Colors.dart';

class MyBottomNavigatorBar extends StatelessWidget {
  const MyBottomNavigatorBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: ColorsUtiliy.primaryColor.withOpacity(0.38))
      ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/flower.svg")),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/user-icon.svg"))
      ]),
    );
  }
}
