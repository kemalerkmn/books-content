import 'package:flutter/material.dart';
import 'package:plant_app/Product/bookType.dart';
import 'package:plant_app/View/HomeView/Details/featured_plants_cards.dart';

class ListvViewBuilderPlantCard extends StatelessWidget {
  const ListvViewBuilderPlantCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.22,
      width: size.width * 0.65 * 2,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => BookTypesCards(
                size: size,
                press: () {},
                bookTypeImage: BookTypes[index].bookTypeImage,
              )),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: BookTypes.length),
    );
  }
}
