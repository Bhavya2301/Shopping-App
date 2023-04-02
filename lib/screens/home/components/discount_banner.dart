import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/size_config.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(20),),
      child: Text.rich(
        TextSpan(
          text: "A Winter Suprise\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(text: "Cashback 20%", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}