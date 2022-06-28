import 'package:flutter/material.dart';

import '../../constants.dart';

class SelectedMenu extends StatelessWidget {
  const SelectedMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            "Menu",
            style: kHeadTitleStyle,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          width: double.infinity,
          height: 50.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  MenuItem(
                    text: "Breakfast",
                  ),
                  MenuItem(
                    text: "Lunch",
                  ),
                  MenuItem(
                    text: "Dinner",
                  ),
                  MenuItem(
                    text: "Drink",
                  ),
                  MenuItem(
                    text: "Snack",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatefulWidget {
  const MenuItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive == false ? isActive = true : isActive = false;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 10.0,
        ),
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              kPrimaryColor,
              kSecondaryColor,
            ],
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(
            15.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              30.0,
            ),
            color: isActive ? kPrimaryColor : Colors.white,
          ),
          child: Text(
            widget.text,
            style: isActive
                ? kTitleStyle.copyWith(color: Colors.white)
                : kTitleStyle,
          ),
        ),
      ),
    );
  }
}
