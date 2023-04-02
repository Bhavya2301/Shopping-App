import 'package:flutter/material.dart';
import 'package:shopping_app/enums.dart';
import 'components/body.dart';
import '../../components/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(selectedMenu: MenuState.profile,),
    );
  }
}

