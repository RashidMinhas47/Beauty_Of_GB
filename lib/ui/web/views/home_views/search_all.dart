import 'package:beauty_of_gb/core/constants/color_schema.dart';
import 'package:beauty_of_gb/core/variables/var_widgets.dart';
import 'package:beauty_of_gb/core/widgets/ct_button.dart';
import 'package:flutter/material.dart';

class SearchAllView extends StatelessWidget {
  const SearchAllView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(2,2),
                  spreadRadius: 2,
                  color: kBlackColor.withOpacity(0.2)
                )
              ]
            ),
            margin: EdgeInsets.symmetric(vertical: 30),
            width: size.width*0.66,
            child: TextFormField(

              decoration: InputDecoration(

                hintText: "Places to go, things to do, hotels...",
                hintStyle: Theme.of(context).textTheme.titleSmall,
                fillColor: kWhiteColor.withOpacity(0),

                prefixIcon: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0),
                  child: Icon(Icons.search,size: 30,color: kWhiteColor,),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CTapButton("Search",bgColor: kPrimaryColor,fgColor: kWhiteColor,),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: const BorderSide(width: 4))
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Go on an award-winning adventure",style: Theme.of(context).textTheme.titleLarge,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text("2024’s Travelers’ Choice Awards Best of the Best Things To Do",style: Theme.of(context).textTheme.bodyLarge,),
              ),
              SizedBox(
                width: size.width*0.9,
                height: size.width*.2,

                child: ListView.separated(
                  separatorBuilder: (_,i)=>gapXY(x: 14),

                    scrollDirection: Axis.horizontal, itemCount: 10, itemBuilder: (context,index)=> Container(
                  width: size.width*0.2,
                  height: size.width*0.2,
                  decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color: kGreyDarkColor,
                ),)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Text("Ways to tour Gilgit",style: Theme.of(context).textTheme.titleLarge,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text("Book these experiences for a close-up look at Gilgit.",style: Theme.of(context).textTheme.bodyLarge,),
              ),
              SizedBox(
                width: size.width*0.9,
                height: size.width*.33,

                child: ListView.separated(
                  separatorBuilder: (_,i)=>gapXY(x: 14),

                    scrollDirection: Axis.horizontal, itemCount: 10, itemBuilder: (context,index)=> SizedBox(
                  width: size.width*0.2,
                  height: size.width*0.33,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                                            width: size.width*0.2,
                                            height: size.width*0.2,
                                            decoration: BoxDecoration(

                                            borderRadius: BorderRadius.circular(20),
                                            color: kGreyDarkColor,
                                          ),),
                          Text("Explore Shangri-La of James Hilton, Hunza & Skardu (Private Tour)",style: Theme.of(context).textTheme.titleMedium,),
                          Row(
                            children: [
                              for(int i =0;i<=4;i++)
                                CircleAvatar(radius: 10,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("2",style: Theme.of(context).textTheme.titleSmall,),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("from \$1120 per adult",style: Theme.of(context).textTheme.titleMedium,),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),

        ],
      ),
    );
  }
}
