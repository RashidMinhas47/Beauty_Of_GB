import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title:      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text('e.Nature Glimpse',style: Theme.of(context).textTheme.titleMedium,),
        ),
        actions: [

          Icon(Icons.person),
          gapXY(x:20)
     ]
      ),

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
      body: const Center(
        child: Text('This is a mobile layout'),
      ),
    );
  }
}