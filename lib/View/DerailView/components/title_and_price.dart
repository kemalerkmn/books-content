// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    required this.bookTitle,
    required this.author,
  });

  final String bookTitle, author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "$bookTitle\n",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: ColorsUtiliy.primaryColor, fontWeight: FontWeight.bold),
          ),
          Text(
            author,
            style: TextStyle(
              fontSize: 20,
              color: ColorsUtiliy.primaryColor.withOpacity(0.7),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
