import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.size,
    required this.bookTitle,
    required this.author,
    required this.price,
    required this.press,
    required this.bookImage,
  }) : super(key: key);

  final Size size;
  final String bookTitle, author, bookImage;
  final int price;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
          height: size.height * 0.4,
          width: size.width * 0.42,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                      borderRadius: RadiusUtiliy.defaultRadius,
                      boxShadow: [
                        BoxShadow(
                          color: ColorsUtiliy.primaryColor.withOpacity(0.6),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset:
                              const Offset(2, 4), // changes position of shadow
                        ),
                      ],
                      image: DecorationImage(
                          image: ExactAssetImage(bookImage),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              ColorsUtiliy.imageOpacity.withOpacity(0.85),
                              BlendMode.modulate))),
                ),
                const Spacer(),

                Padding(
                  padding: PaddingUtiliy.horizanalPadding / 6,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    bookTitle.toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: PaddingUtiliy.horizanalPadding / 6,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    author.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: ColorsUtiliy.primaryColor.withOpacity(0.4)),
                  ),
                ),
                // ignore: prefer_const_constructors
                Spacer()
              ],
            ),
          )),
    );
  }
}
