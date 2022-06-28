import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';
import 'package:flutter_food_app/views/buy_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/bottom_nav_bar.dart';
import 'components/header_menu_bell_image.dart';
import 'components/menu_food_list.dart';
import 'components/search_btn.dart';
import 'components/selected_menu.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMenuBellAndImage(),
            SearchButton(),
            SelectedMenu(),
            MenuFoodList(
              text: "Popular",
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BuyUI()));
              },
            ),
            MenuFoodList(
              text: "Suggest for you",
              press: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
