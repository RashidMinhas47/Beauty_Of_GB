// lib/core/theme/app_theme.dart

import 'dart:ui';

import 'package:beauty_of_gb/core/constants/color_schema.dart';
import 'package:flutter/material.dart';
import 'text_styles.dart';

class MyAppTheme {
  static ThemeData dark = ThemeData.dark().copyWith(

    tabBarTheme: TabBarTheme(
      labelPadding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      indicatorColor: kPrimaryColor,

      labelStyle: AppTextStyles.textButtonStyleDark(fontWeight: FontWeight.bold,fontSize: 20,color: kPrimaryColor),
      unselectedLabelStyle: AppTextStyles.textButtonStyleDark(fontWeight: FontWeight.w400,fontSize: 20),

    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.textButtonStyleDark(fontWeight: FontWeight.w300,fontFamily: "Poppins",color: kGreyLightColor),
      titleSmall:  AppTextStyles.textButtonStyleDark( fontWeight: FontWeight.w400,fontSize: 18,color: kGreyLightColor),
      titleMedium: AppTextStyles.textButtonStyleDark( fontWeight: FontWeight.bold,),
      titleLarge: AppTextStyles.textButtonStyleDark( fontWeight: FontWeight.bold,fontSize: 24),
      headlineLarge: AppTextStyles.textButtonStyleDark(fontFamily: 'Urbanist',fontWeight: FontWeight.w900,fontSize: 60),
    ),
    textButtonTheme: TextButtonThemeData(

      style: TextButton.styleFrom(
        foregroundColor: kBlackColor,
        backgroundColor: kWhiteColor,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        textStyle: AppTextStyles.textButtonStyleDark(fontWeight: FontWeight.w600),
        iconColor:   kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    ),
    useMaterial3: true,
  );
  static ThemeData light = ThemeData(
    primarySwatch: Colors.green,
    // Define text button theme
    textButtonTheme: TextButtonThemeData(

      style:TextButton.styleFrom(
        foregroundColor: kWhiteColor,
        backgroundColor: kBlackColor,
        textStyle: AppTextStyles.textButtonStyleLight(fontWeight: FontWeight.w600),
        padding: const  EdgeInsets.symmetric(vertical: 15, horizontal: 30),

      )

    ),
  );
}
