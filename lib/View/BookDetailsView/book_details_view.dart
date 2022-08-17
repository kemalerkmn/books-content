// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';
import 'package:plant_app/Product/books.dart';
import 'package:plant_app/View/BookDetailsView/details/appbar.dart';
import 'package:plant_app/View/BookDetailsView/details/product-%C4%B1mages.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookDetails})
      : super(key: key);
  final Book bookDetails;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: widget.bookDetails.price),
      ),
      body: ListView(
        children: [
          ProductImages(
              image: widget.bookDetails.image,
              bookName: widget.bookDetails.bookTitle),
          Container(
            padding: PaddingUtiliy.onlyTop / 1.6,
            margin: PaddingUtiliy.onlyTop / 1.6,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorsUtiliy.bgsecColor.withOpacity(0.2),
                borderRadius: RadiusUtiliy.onlyTopRadius),
            child: Padding(
              padding: PaddingUtiliy.horizanalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.bookDetails.bookTitle,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black)),
                      Text(widget.bookDetails.bookTitle,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600))
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const BookContexts(
                    bookContext: "dsafdga",
                    profilimage: "assets/images/profil/profil.jpeg",
                  ),
                  const BookContexts(
                    profilimage: "assets/images/profil/profil3.jpeg",
                    bookContext: "dsafdga",
                  ),
                  const BookContexts(
                    profilimage: "assets/images/profil/profil5.jpeg",
                    bookContext: "dsafdga",
                  ),
                  const BookContexts(
                    profilimage: "assets/images/profil/profil1.jpeg",
                    bookContext: "dsafdga",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BookContexts extends StatelessWidget {
  const BookContexts({
    Key? key,
    required this.profilimage,
    required this.bookContext,
  }) : super(key: key);
  final String profilimage, bookContext;

  @override
  Widget build(BuildContext context) {
    String text =
        " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: ColorsUtiliy.avatarColor,
                    borderRadius: RadiusUtiliy.defaultRadius * 3),
                child: Padding(
                  padding: PaddingUtiliy.avatarPadding,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(profilimage),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Text(text,
                    maxLines: 5,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.black,
                        )),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text("Devamı....",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black54, fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
