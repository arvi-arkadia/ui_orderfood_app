import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
          ),
          hintText: "Search Here",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}
