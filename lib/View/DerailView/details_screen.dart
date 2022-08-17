import 'package:flutter/material.dart';
import 'package:plant_app/View/DerailView/components/body.dart';

import '../../Product/books.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.bookDetails,
  }) : super(key: key);
  final Book bookDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(bookDetails: bookDetails),
    );
  }
}
