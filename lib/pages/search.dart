import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixapp/provider/search/searchprovider.dart';
import 'package:netflixapp/widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/search/textfield/textfield.dart';
import '../widgets/search/topsearch/topsearchtext.dart';
import '../widgets/search/topsearchlistviewitem/topsearchlistviewitem.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //int index = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, searchProvider item, widget) {
      //item.index = index;
      return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          TextFieldWidget(),
          TopSearchTextWidget(),
          SizedBox(
            width: 100.w,
            height: 72.h,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: item.items.length,
              itemBuilder: (context, index) {
              item.index = index;
              return TopSearchListViewItem();
            },),
          )
        ],
      ),
      //bottomNavigationBar: bottomNavigationBar(),
    );
    },);
  }
}