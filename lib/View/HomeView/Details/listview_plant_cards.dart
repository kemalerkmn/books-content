// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:plant_app/Product/books.dart';
import 'package:plant_app/View/DerailView/details_screen.dart';
import 'package:plant_app/View/HomeView/Details/custom_card.dart';

import '../../BookDetailsView/book_details_view.dart';

class ListViewBookCards extends StatelessWidget {
  const ListViewBookCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.40,
      width: size.width * 1.4,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => CustomCard(
                size: size,
                author: Books[index].author,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                bookDetails: Books[index],
                              )));
                },
                bookImage: Books[index].image,
                bookTitle: Books[index].bookTitle,
                price: Books[index].price,
              )),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: Books.length),
    );
  }
}
