import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:beauty_of_gb/core/widgets/ct_button.dart';
import 'package:beauty_of_gb/ui/web/views/home_views/search_all.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  static List<Widget> actionButtons(context,{VoidCallback? discoverPress,VoidCallback? tripsPress,VoidCallback? reviewPress,VoidCallback? morePress,VoidCallback?signInPress,VoidCallback? currencyPress})=>[

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Text('e.Nature Glimpse',style: Theme.of(context).textTheme.titleMedium,),
    ),
    const Spacer(flex: 13,),
    CTapButtonTrans("Discover",onPressed: discoverPress,),
    CTapButtonTrans("Trips",onPressed: tripsPress,),
    CTapButtonTrans("Review",onPressed: reviewPress,),
    CTapButtonTrans("More",onPressed: morePress,),
    const Spacer(flex: 9,),
    CTapButtonTrans("  |  USD",icon:const Icon(Icons.language),onPressed: currencyPress,),
    CTapButton("Sign in",onPressed: signInPress,),
    gapXY(x:30),
  ];

  static List<Map<String,dynamic>>  tabsData =[
    {"label": "Search All", "icon": Icons.search, "title":"Where to?"},
    {"label": "Hotels", "icon": Icons.bed,"title":"Where to?"},
    {"label": "Things to Do", "icon": Icons.adjust_outlined,"title":"Where to?"},
    {"label": "Restaurants", "icon": Icons.local_restaurant_outlined,"title":"Where to?"},
    {"label": "Flights", "icon": Icons.flight_outlined,"title":"Where to?"},
    {"label": "Vacation Rentals", "icon": Icons.explore_outlined,"title":"Where to?"},
  ];
  static List<Widget> views = [
const SearchAllView(),
const SearchAllView(),
const SearchAllView(),
const SearchAllView(),
const SearchAllView(),
const SearchAllView(),
  ];
}