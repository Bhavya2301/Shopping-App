import 'package:flutter/material.dart';
import 'components/body.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0.0,
        title: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                "Login Success"
              ),
            ),
          ),
        ),
      body: Body(),
    );
  }
}