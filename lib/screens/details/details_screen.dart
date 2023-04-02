import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/size_config.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsDetailsArguments args = ModalRoute.of(context)!.settings.arguments as ProductsDetailsArguments;
    return Scaffold(
      //by default our background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(args.product.rating),
      ),
      body: Body(product: args.product,),
    );
  }
}





//But we also need  to pass our product to our details screen
//And we use name route so we need to create a arguments class

class ProductsDetailsArguments {
  final Product product;

  ProductsDetailsArguments({required this.product});
}