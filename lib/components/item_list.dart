import 'package:flutter/material.dart';
import 'package:ui_orderfood_app/screens/home/components/item_cards.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
