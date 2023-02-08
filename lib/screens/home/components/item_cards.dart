import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_orderfood_app/constants.dart';

class ItemCards extends StatelessWidget {
  final String title, shopName, srcSvg;
  final VoidCallback press;
  const ItemCards({
    super.key,
    required this.title,
    required this.shopName,
    required this.srcSvg,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // card
      margin: EdgeInsets.only(left: 20, right: 15, bottom: 20, top: 20),
      decoration: BoxDecoration(
        // bg color
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // bg shadow
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xffb0cce1).withOpacity(0.32),
          ),
        ],
      ),
      // item
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // icon cards
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    srcSvg,
                    width: size.width * 0.18,
                  ),
                ),
                // text
                Text(
                  title,
                  style: TextStyle(
                    color: ksecondaryColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  shopName,
                  style: TextStyle(
                    color: ksecondaryColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
