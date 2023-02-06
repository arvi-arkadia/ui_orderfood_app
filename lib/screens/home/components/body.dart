import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/constants.dart';

import 'search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search item
        SearchBox(),
      ],
    );
  }
}
