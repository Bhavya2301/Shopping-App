import 'package:flutter/material.dart';
import 'package:shopping_app/screens/splash/components/body.dart';
import 'package:shopping_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "/spllash";

  @override
  Widget build(BuildContext context) {
    //We have to it on our starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}