import 'package:flutter/widgets.dart';
import 'package:shopping_app/screens/cart/cart_screen.dart';
import 'package:shopping_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopping_app/screens/details/details_screen.dart';
import 'package:shopping_app/screens/forget_passwrod/forget_password_screen.dart';
import 'package:shopping_app/screens/home/home_screen.dart';
import 'package:shopping_app/screens/login_success/login_success_screen.dart';
import 'package:shopping_app/screens/otp/otp_screen.dart';
import 'package:shopping_app/screens/profile/profile_screen.dart';
import 'package:shopping_app/screens/sign_in/sign_in_screen.dart';
import 'package:shopping_app/screens/sign_up/sign_up_screen.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';
import 'package:shopping_app/screens/sign_in/sign_in_screen.dart';

//We use named routes
//All our routes will be avialable here.
final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  ForgetPasswordScreen.routeName:(context) => ForgetPasswordScreen(),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
  OtpScreen.routeName:(context) => OtpScreen(),
  HomeScreen.routeName:(context) => HomeScreen(),
  DetailsScreen.routeName:(context) => DetailsScreen(),
  CartScreen.routeName:(context) => CartScreen(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),
};