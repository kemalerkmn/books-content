import 'package:flutter/material.dart';
import 'package:plant_app/View/HomeView/Details/headers_with_search.dart';
import 'package:plant_app/View/HomeView/Details/listview_plant_cards.dart';
import 'package:plant_app/View/HomeView/Details/text_and_more_button.dart';

import 'listview_plants_cards.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderswithSearch(size: size),
          TextandMoreButton(
            text: "Recommened",
            press: () {},
          ),
          ListViewBookCards(size: size),
          TextandMoreButton(
            text: "Types of books",
            press: () {},
          ),
          ListvViewBuilderPlantCard(size: size)
        ],
      ),
    );
  }
}
