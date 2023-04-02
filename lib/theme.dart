import 'package:flutter/material.dart';
import '.../../constants.dart';
import 'package:flutter/services.dart';

ThemeData theme(){
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: appbarTheme(),
        textTheme: textTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity:  VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
  );
  return InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 20,
            ),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
          );
}

TextTheme textTheme() {
  return TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor),
      );
}

AppBarTheme appbarTheme() {
  return AppBarTheme(
        color: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light,),
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),
      );
}