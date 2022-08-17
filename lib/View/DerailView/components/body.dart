import 'package:flutter/material.dart';
import 'package:plant_app/View/DerailView/components/containercontext.dart';

import '../../../Product/books.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.bookDetails,
  }) : super(key: key);
  final Book bookDetails;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Column(
          children: <Widget>[
            ImageAndIcons(
              bookDetails: widget.bookDetails,
              size: size,
            ),
            TitleAndPrice(
              bookTitle: widget.bookDetails.bookTitle,
              author: widget.bookDetails.author,
            ),
            ContainerContext(
              widget: widget,
            )
          ],
        ),
      ],
    );
  }
}
