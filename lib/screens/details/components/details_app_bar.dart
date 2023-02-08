import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/home/home_screen.dart';

AppBar detailsAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    elevation: 0,
    backgroundColor: kPrimaryColor,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/share.svg"),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/more.svg"),
      ),
    ],
  );
}
