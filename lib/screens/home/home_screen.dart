import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/components/bottom_nav_bar.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/home/components/app_bar.dart';
import 'package:ui_orderfood_app/screens/home/components/body.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
