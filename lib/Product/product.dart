// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:flutter/material.dart';

class Product {
  String image;
  String plantTitle;
  String country;
  int price;
  VoidCallback press;
  Product({
    required this.image,
    required this.plantTitle,
    required this.country,
    required this.price,
    required this.press,
  });
}

List<Product> Planst = [
  Product(
      image: "assets/images/image_1.png",
      plantTitle: "Samantha",
      country: "Türkiye",
      price: 400,
      press: () {}),
  Product(
      image: "assets/images/image_2.png",
      plantTitle: "Angelica",
      country: "Amerila",
      price: 540,
      press: () {}),
  Product(
      image: "assets/images/image_3.png",
      plantTitle: "Samantha",
      country: "Russia",
      price: 440,
      press: () {}),
];
