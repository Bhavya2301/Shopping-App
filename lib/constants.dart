import 'package:flutter/material.dart';
import 'package:shopping_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

final headingStyle = TextStyle(
            fontSize: getProportionateScreenWidth(28),
            color: Colors.black,
            fontWeight: FontWeight.bold,
            height: 1.5,
          );

const kAnimationDuration = Duration(milliseconds: 200);


final otpInpurDecoration = InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
                enabledBorder: outlineInputborder(),
                focusedBorder: outlineInputborder(),
                border: outlineInputborder(),
              );

OutlineInputBorder outlineInputborder() {
  return OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: kTextColor),
              );
}


// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


