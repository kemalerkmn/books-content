// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

import '../../../Product/books.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatefulWidget {
  const ImageAndIcons({
    required this.size,
    required this.bookDetails,
  });

  final Size size;
  final Book bookDetails;

  @override
  State<ImageAndIcons> createState() => _ImageAndIconsState();
}

class _ImageAndIconsState extends State<ImageAndIcons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtiliy.onlyBottom,
      child: SizedBox(
        height: widget.size.height * 0.50,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: PaddingUtiliy.horizonalandverticalPadding / 2,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    IconCard(
                      icon: "assets/icons/heart-icon.svg",
                      number: widget.bookDetails.like,
                    ),
                    IconCard(
                      icon: "assets/icons/star-icon.svg",
                      number: widget.bookDetails.price,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: PaddingUtiliy.dfmargin,
              height: widget.size.height * 0.4,
              width: widget.size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: RadiusUtiliy.onlylefRadius,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: ColorsUtiliy.primaryColor.withOpacity(0.8),
                  ),
                ],
              ),
              child: Image.asset(widget.bookDetails.image),
            ),
          ],
        ),
      ),
    );
  }
}
