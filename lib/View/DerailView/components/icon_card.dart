import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
    required this.number,
  }) : super(key: key);

  final String icon;
  final int number;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: PaddingUtiliy.avatarPadding * 3,
        height: 62,
        width: 82,
        decoration: BoxDecoration(
          color: ColorsUtiliy.bgColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 22,
              color: ColorsUtiliy.primaryColor.withOpacity(0.22),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 22,
              color: Colors.amber,
            ),
            const Spacer(),
            Text(
              "$number",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
