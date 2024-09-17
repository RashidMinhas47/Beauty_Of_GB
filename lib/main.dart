import 'package:beauty_of_gb/core/theme/app_theme.dart';
import 'package:beauty_of_gb/main.dart';
import 'package:beauty_of_gb/ui/responsive_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Responsive Layout',
      darkTheme: MyAppTheme.dark,
      theme: MyAppTheme.light,
      debugShowCheckedModeBanner: false,


      home: const HomeRScreen(),
    );
  }
}





