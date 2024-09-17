import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:beauty_of_gb/core/widgets/common_tap_bar.dart';
import 'package:beauty_of_gb/core/widgets/ct_button.dart';
import 'package:beauty_of_gb/ui/web/views/home_web.dart';
import 'package:flutter/material.dart';

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('Menu')),
            ListTile(title: Text('Discover')),
            ListTile(title: Text('Trips')),
            ListTile(title: Text('Review')),
            ListTile(title: Text('More')),
          ],
        ),
      ),
      appBar: AppBar(
        title:      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text('e.Nature Glimpse',style: Theme.of(context).textTheme.titleMedium,),
        ),
        actions: [
          CTapButton("Sign in",onPressed: (){},),
          gapXY(x:20),
        ],
      ),
      body:  Center(
        child: Column(
          children: [
            gapXY(y: 49),
CommonTabBar(size: size, vsync: this),
//             Text("Where to?",style: Theme.of(context).textTheme.headlineLarge,),
//             Center(
//               child: Container(
//                 alignment: Alignment.center,
//                 width: size.width*0.7,
//
//                 child: TabBar(
// dividerColor: Colors.transparent,
//                   tabAlignment: TabAlignment.center,
//                   controller: TabController(initialIndex: 0, length: tabsData.length,vsync: this),
//                   isScrollable: true, // Scrollable tabs if they don't fit the screen
//                   tabs: [
//                     for(int i = 0; i<tabsData.length;i++)
//                       Row(children: [
//                         Icon(tabsData[i]['icon']),
//                         Tab(text: tabsData[i]['label'],)
//
//                       ],)
//                   ],
//                 ),
//               ),
//             ),
          ],
        ),

      ),
    );
  }
}

