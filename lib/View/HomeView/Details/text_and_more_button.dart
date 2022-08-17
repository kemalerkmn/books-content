import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

class TextandMoreButton extends StatelessWidget {
  const TextandMoreButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingUtiliy.horizanalPadding,
      padding: PaddingUtiliy.onlyTopandBottomPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24,
            child: Stack(
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.headline6,
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
          ),
          ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: ColorsUtiliy.primaryColor),
            child: const Text("More"),
          )
        ],
      ),
    );
  }
}
