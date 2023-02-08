import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String srcImg;
  const ItemImage({
    super.key,
    required this.srcImg,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      srcImg,
      height: size.height * .25,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
