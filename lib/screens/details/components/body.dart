import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/size_config.dart';
import '.../../product_images.dart';
import '.../../product_description.dart';
import '.../../top_rounded_container.dart';
import '.../../color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product, pressOnSeeMore: (){},),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9), 
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white, 
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth*0.15,
                            right: SizeConfig.screenWidth*0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: (){},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




