// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:flutter/material.dart';

class Book {
  String image;
  String bookTitle;
  String author;
  int price;
  VoidCallback press;
  int like;
  Book({
    required this.image,
    required this.bookTitle,
    required this.author,
    required this.price,
    required this.press,
    required this.like,
  });
}

List<Book> Books = [
  Book(
      like: 143,
      image: "assets/images/books/1984.jpg",
      bookTitle: "1984",
      author: "George Orwell",
      price: 3,
      press: () {}),
  Book(
      like: 993,
      image: "assets/images/books/askveoburCinler.jpg",
      bookTitle: "Aşk ve Öbür Cinler",
      author: "Gabriel Farcia Marquez",
      price: 4,
      press: () {}),
  Book(
      like: 653,
      image: "assets/images/books/kardesiminHikayesi.jpg",
      bookTitle: "Kardeşimin Hikayesi",
      author: "Lütfü Livaneli",
      price: 5,
      press: () {}),
  Book(
      like: 160,
      image: "assets/images/books/sucveCeza.jpg",
      bookTitle: "Suç ve Ceza",
      author: "Fyador Mihayloviç Dostoyevski",
      price: 4,
      press: () {}),
];
