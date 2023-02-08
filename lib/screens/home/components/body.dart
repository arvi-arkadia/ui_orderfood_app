import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/home/components/category.dart';

import '../../../components/search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search item
        SearchBox(
          onChanged: (String value) {},
        ),
        // tab slide menu
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryWidgets(
                text: 'Combo Meal',
                press: () {},
                isActive: true,
              ),
              CategoryWidgets(
                text: 'Chicken',
                press: () {},
              ),
              CategoryWidgets(
                text: 'Beverages',
                press: () {},
              ),
              CategoryWidgets(
                text: 'Snacks',
                press: () {},
              ),
              CategoryWidgets(
                text: 'Burgers',
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
