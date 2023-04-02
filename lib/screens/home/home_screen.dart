import 'package:flutter/material.dart';
import 'package:shopping_app/components/custom_nav_bar.dart';
import 'package:shopping_app/enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/hone";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(selectedMenu: MenuState.home),
    );
  }
}