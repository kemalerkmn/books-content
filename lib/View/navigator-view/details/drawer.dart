// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:plant_app/Padding-Radius.dart';
import 'package:plant_app/View/HomeView/Details/headers_with_search.dart';

import '../../../Colors.dart';
import '../../ProfilView/profilview.dart';

Drawer drawerMenu(BuildContext context) {
  return Drawer(
    backgroundColor: ColorsUtiliy.bgColor,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Align(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilView())),
                      child: Avatar(
                        profilImage: 'assets/images/profil/profil.jpeg',
                      )),
                  Stack(
                    children: [
                      Text(
                        "kemal",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 7,
                          color: ColorsUtiliy.primaryColor.withOpacity(0.4),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
          decoration: BoxDecoration(
              color: ColorsUtiliy.primaryColor.withOpacity(0.8),
              borderRadius: RadiusUtiliy.onlyRadius / 1.5),
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: ColorsUtiliy.primaryColor,
          ),
          title: const Text('Profil'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ProfilView()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: ColorsUtiliy.primaryColor,
          ),
          title: const Text('Ayarlar'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.exit_to_app,
            color: ColorsUtiliy.primaryColor,
          ),
          title: const Text('Çıkış Yap'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
