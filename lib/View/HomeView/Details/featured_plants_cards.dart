import 'package:flutter/material.dart';

class BookTypesCards extends StatelessWidget {
  const BookTypesCards({
    Key? key,
    required this.size,
    required this.bookTypeImage,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String bookTypeImage;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        height: size.height * 0.22,
        width: size.width * 0.65,
        child: Card(
          child: Image.asset(
            bookTypeImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
