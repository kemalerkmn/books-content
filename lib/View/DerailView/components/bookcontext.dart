// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/Padding-Radius.dart';

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
