import 'package:flutter/material.dart';
import 'package:ui_orderfood_app/screens/home/components/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
