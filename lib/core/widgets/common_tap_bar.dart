import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:beauty_of_gb/ui/shared/home_common.dart';
import 'package:beauty_of_gb/ui/web/views/home_web.dart';
import 'package:flutter/material.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({super.key, required this.size, required this.vsync});

  final Size size;
  final TickerProvider vsync;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Where to?",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          gapXY(y: 20),
          Container(
            alignment: Alignment.center,
            width: size.width * 0.7,
            child: TabBar(
              dividerHeight: 0,
              tabAlignment: TabAlignment.center,
              controller: TabController(
                  initialIndex: 0,
                  length: HomeWidgets.tabsData.length,
                  vsync: vsync),
              isScrollable:
                  true, // Scrollable tabs if they don't fit the screen
              tabs: [
                for (int i = 0; i < HomeWidgets.tabsData.length; i++)
                  Row(
                    children: [
                      Icon(HomeWidgets.tabsData[i]['icon']),
                      Tab(
                        text: HomeWidgets.tabsData[i]['label'],
                      )
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
