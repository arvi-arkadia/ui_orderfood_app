import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ui_orderfood_app/constants.dart';
import 'package:ui_orderfood_app/screens/details/components/order_button.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // shop
            shopName(name: "Macdonalds"),
            // rating
            titlePrice(context,
                product: 'Cheese Burger',
                rate: 4.0,
                price: 20,
                review: 25,
                onRate: () {}),
            // Description
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(
                color: ksecondaryColor,
                height: 1.5,
              ),
            ),
            // button
            SizedBox(height: size.height * 0.1),
            OrderButton(
              pres: () {},
            ),
          ],
        ),
      ),
    );
  }

  Padding titlePrice(BuildContext context,
      {required String product,
      required double rate,
      required int price,
      required int review,
      required VoidCallback onRate}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product
                Text(
                  product,
                  style: Theme.of(context).textTheme.headline6,
                ),
                // rating
                SizedBox(height: 10),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: rate,
                      starCount: 5,
                      // onRated: onRate,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$review Reviews",
                      style: TextStyle(color: ksecondaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // price
          priceTag(price, context)
        ],
      ),
    );
  }

  ClipPath priceTag(int price, BuildContext context) {
    return ClipPath(
      clipper: PriceClipper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Text(
          "\$ $price",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Row shopName({required String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(color: ksecondaryColor),
        ),
      ],
    );
  }
}

class PriceClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
