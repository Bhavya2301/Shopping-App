import 'package:flutter/material.dart';
import 'package:shopping_app/screens/details/details_screen.dart';
import 'package:shopping_app/size_config.dart';
import '.../../section_title.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/components/products_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: (){},
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length, 
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(context, DetailsScreen.routeName, arguments: ProductsDetailsArguments(product: demoProducts[index])),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}

