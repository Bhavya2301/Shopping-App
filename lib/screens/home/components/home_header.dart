import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart/cart_screen.dart';
import '.../../icon_btn_with_counter.dart';
import '.../../search_field.dart';
import 'package:shopping_app/size_config.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnCounter(
            svgScr: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnCounter(
            svgScr: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: (){},
          ),
        ],
      ),
    );
  }
}

