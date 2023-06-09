import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/routs.dart';
import 'package:shopping_app/screens/profile/profile_screen.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';
import '.../../theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

