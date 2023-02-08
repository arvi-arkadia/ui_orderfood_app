import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/components/category_list.dart';
import 'package:ui_orderfood_app/components/item_list.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/home/components/category.dart';
import 'package:ui_orderfood_app/screens/home/components/discount_cards.dart';
import 'package:ui_orderfood_app/screens/home/components/item_cards.dart';

import '../../../components/search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search item
          SearchBox(
            onChanged: (String value) {},
          ),
          // tab slide menu
          CategoryList(),
          // Box item
          ItemList(),
          // CTA
          DiscountCards()
        ],
      ),
    );
  }
}
