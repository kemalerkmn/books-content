import 'package:flutter/material.dart';
import 'package:plant_app/Colors.dart';

import 'View/navigator-view/navigator-view.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigatorView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
          ),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: ColorsUtiliy.textColor),
          scaffoldBackgroundColor: ColorsUtiliy.bgColor,
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.white))),
    );
  }
}
