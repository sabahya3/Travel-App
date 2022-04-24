import 'package:flutter/material.dart';

import 'package:travel_ui/utils/color_palete.dart';
import 'package:travel_ui/utils/constants.dart';
import 'package:travel_ui/views/screens/home_page/components/big_card_list.dart';
import 'package:travel_ui/views/screens/home_page/components/categories_list_view.dart';
import 'package:travel_ui/views/screens/home_page/components/custom_text_with_padding.dart';
import 'package:travel_ui/views/screens/home_page/components/popular_view_all.dart';
import 'package:travel_ui/views/screens/home_page/components/search_bar_and_icon.dart';
import 'package:travel_ui/views/widgets/custom_app_bar.dart';
import 'package:travel_ui/views/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = getHeight(context);
    double width = getWidth(context);
    return Scaffold(
        backgroundColor: bgColor,
        appBar: CustomAppBar(
          width: width,
          height: height,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomTextWithPadding(
                  fontSize: 21,
                  height: height,
                  txt: 'Hello , Ahmed',
                  txtColor: Colors.grey,
                  width: width),
              CustomTextWithPadding(
                  fontSize: 21,
                  height: height,
                  txt: 'Where do you want to go ?',
                  txtColor: Colors.black,
                  width: width),
              SearchBarAndIcon(height: height, width: width),
              CategoriesListView(height: height, width: width),
              PopularAndViewAll(height: height, width: width),
            const  BigCardList()
            
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(navBarIndex: navBarIndex));
  }
}
