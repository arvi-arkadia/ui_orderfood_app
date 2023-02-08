import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/components/category_list.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/home/components/category.dart';
import 'package:ui_orderfood_app/screens/home/components/item_cards.dart';

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
        CategoryList(),
        // Box item
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ItemCards(
                srcSvg: 'assets/icons/burger_beer.svg',
                title: 'Burger & Beer',
                shopName: 'Macdonald\'s',
                press: () {},
              ),
              ItemCards(
                srcSvg: 'assets/icons/chinese_noodles.svg',
                title: 'Chinesse & Noodles',
                shopName: 'Wendys',
                press: () {},
              ),
              ItemCards(
                srcSvg: 'assets/icons/burger_beer.svg',
                title: 'Burger & Beer',
                shopName: 'Macdonald\'s',
                press: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
