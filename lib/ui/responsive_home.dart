import 'package:beauty_of_gb/ui/mobile/views/home_mobile.dart';
import 'package:beauty_of_gb/ui/tablet/views/home_tablet.dart';
import 'package:beauty_of_gb/ui/web/views/home_web.dart';
import 'package:flutter/material.dart';

class HomeRScreen extends StatelessWidget {
  const HomeRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Using LayoutBuilder and MediaQuery to adjust the layout based on the screen size
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return const HomeMobile();
          } else if (constraints.maxWidth < 1000) {
            // Tablet layout
            return const HomeTablet();
          } else {
            // Web layout
            return const HomeWeb();
          }
        },
      ),
    );
  }
}