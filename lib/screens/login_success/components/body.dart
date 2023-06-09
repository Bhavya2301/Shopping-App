import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/screens/home/home_screen.dart';
import 'package:shopping_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight*0.04,),
        Image.asset("assets/images/success.png",
        height: SizeConfig.screenHeight*0.4,//40%
        ),
        SizedBox(height: SizeConfig.screenHeight*0.08,),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(40),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth*0.6,
          child: DefaultButton(
            text: "Back to home", 
            press: (){
              Navigator.pushNamed(context, HomeScreen.routeName);
            }
          ),
        ),
        Spacer(),
      ],
    );
  }
}