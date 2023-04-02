import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/size_config.dart';
import 'package:shopping_app/screens/otp/components/otp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Text("OTP Verification", style: headingStyle,),
              Text("We sent code to your number +91-941692****", textAlign: TextAlign.center,),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight*0.15,),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.1,),//10% of height
              GestureDetector(
                onTap: (){
                  //resend your otp
                },
                child: Text("Resend OTP Code", style: TextStyle(decoration: TextDecoration.underline),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The code will expire in "),
            TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0.0), 
              duration: Duration(seconds: 30), 
              builder: (context, value, child) => Text("00:${value.toInt()}", style: TextStyle(color: Colors.red),),
              onEnd: (){},
            ),
          ],
        );
  }
}


