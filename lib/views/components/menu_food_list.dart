import 'package:flutter/material.dart';

import '../../constants.dart';
import '../buy_ui.dart';

class MenuFoodList extends StatelessWidget {
  const MenuFoodList({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndArrowForward(
          title: text,
          press: press,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                FoodItem(
                  food: "Pan eggs sprinkled with chinese sausage, diced bacon",
                  image: "assets/images/pan-egg.jpg",
                  price: "20",
                  itemPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyUI()));
                  },
                ),
                FoodItem(
                  food: "Croissants ",
                  image: "assets/images/croissants.jpg",
                  price: "25",
                  itemPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyUI()));
                  },
                ),
                FoodItem(
                  food: "Pan eggs sprinkled with chinese sausage, diced bacon",
                  image: "assets/images/pan-egg.jpg",
                  price: "35",
                  itemPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyUI()));
                  },
                ),
                FoodItem(
                  food: "Pan eggs sprinkled with chinese sausage, diced bacon",
                  image: "assets/images/pan-egg.jpg",
                  price: "20",
                  itemPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyUI()));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.food,
    required this.image,
    required this.price,
    required this.itemPress,
  }) : super(key: key);

  final String food, image, price;
  final VoidCallback itemPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemPress,
      child: Container(
        margin: EdgeInsets.only(
          right: 10.0,
        ),
        width: 165,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 165,
                  height: 128,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  food,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 10,
              bottom: 0,
              child: Text(
                "\$$price",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleAndArrowForward extends StatelessWidget {
  const TitleAndArrowForward({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
        bottom: 10.0,
        left: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kHeadTitleStyle,
          ),
          GestureDetector(
            onTap: press,
            child: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
    );
  }
}
