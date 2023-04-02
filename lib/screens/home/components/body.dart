import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/details_screen.dart';
import 'package:shopping_app/screens/home/components/section_title.dart';
import 'package:shopping_app/size_config.dart';
import '.../../home_header.dart';
import '.../../discount_banner.dart';
import '.../../categories.dart';
import '.../../special_offers.dart';
import '../components/popular_products.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30),),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30),),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30),),
          ],
        ),
      ),
    );
  }
}

