import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/components/form_error.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/size_config.dart';
import 'package:shopping_app/components/custom_svg_icon.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.02,),//2%
                Text(
                  "Complete Profile",
                  style: headingStyle,
                ),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.05,),//5%
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30),),
                Text("By continuing you confirm that you agree \nwith our Terms and Conditions", textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
    );
  }
}

