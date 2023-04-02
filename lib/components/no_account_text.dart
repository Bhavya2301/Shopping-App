import 'package:flutter/material.dart';
import 'package:shopping_app/screens/sign_up/sign_up_screen.dart';
import 'package:shopping_app/size_config.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/forget_passwrod/forget_password_screen.dart';

class NoaccountText extends StatelessWidget {
  const NoaccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up ",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}