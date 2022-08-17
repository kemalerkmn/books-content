// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.bookName,
    required this.image,
  }) : super(key: key);

  final String image, bookName;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorsUtiliy.primaryColor.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          width: (238),
          child: AspectRatio(
            aspectRatio: .8,
            child: Hero(
              tag: widget.bookName,
              child: Image.asset(widget.image),
            ),
          ),
        ),
      ],
    );
  }
}
