import 'package:flutter/material.dart';
import 'package:plant_app/View/DerailView/components/body.dart';
import 'package:plant_app/View/DerailView/components/bookcontext.dart';

import '../../../Colors.dart';
import '../../../Padding-Radius.dart';

class ContainerContext extends StatelessWidget {
  const ContainerContext({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingUtiliy.onlyTop / 3,
      margin: PaddingUtiliy.onlyTop / 3,
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
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.w600))
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
    );
  }
}
