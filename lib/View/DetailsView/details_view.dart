import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/Colors.dart';
import 'package:plant_app/View/HomeView/home_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Row(
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/back_arrow.svg")),
                        Container(
                          height: 62,
                          width: 62,
                          padding: EdgeInsets.all(20 / 2),
                          margin: EdgeInsets.symmetric(
                              vertical: size.height * 0.03),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius: 22,
                                    color: ColorsUtiliy.primaryColor
                                        .withOpacity(0.22)),
                                BoxShadow(
                                  blurRadius: 20,
                                  offset: Offset(-15, -15),
                                  color: Colors.white,
                                )
                              ]),
                          child: SvgPicture.asset("assets/icons/sun.svg"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
