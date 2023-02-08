import 'package:flutter/material.dart';
import 'package:ui_orderfood_app/screens/details/components/item_img.dart';
import 'package:ui_orderfood_app/screens/details/components/item_info.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // image
        ItemImage(
          srcImg: "assets/images/burger.png",
        ),
        // item
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}
