import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:beauty_of_gb/core/widgets/common_tap_bar.dart';
import 'package:beauty_of_gb/core/widgets/ct_button.dart';
import 'package:beauty_of_gb/ui/shared/home_common.dart';
import 'package:beauty_of_gb/ui/web/views/home_views/search_all.dart';
import 'package:beauty_of_gb/ui/web/views/home_web.dart';
import 'package:flutter/material.dart';
class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        centerTitle: false,
        actions: HomeWidgets.actionButtons(context),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(

              title: Text('Silver AppBar with Tabs'),
              pinned: true,
              floating: true,
              bottom:TabBar(
                dividerHeight: 0,
                tabAlignment: TabAlignment.center,
                controller: TabController(
                    initialIndex: 0,
                    length: HomeWidgets.tabsData.length,
                    vsync: this),
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
          ];
        },
        //TODO: this is the actual body
        body: SingleChildScrollView(
          child:Column(children: [
            gapXY(y: 49),
            CommonTabBar(size: size,vsync: this,),
            Container(
                height: size.height,
                child: PageView.builder(itemBuilder: (context,index)=> const SearchAllView()))
          ],),
        ),
      ),
    );
  }
}



