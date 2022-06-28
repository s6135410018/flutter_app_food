import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';

class BuyUI extends StatefulWidget {
  const BuyUI({Key? key}) : super(key: key);

  @override
  State<BuyUI> createState() => _BuyUIState();
}

class _BuyUIState extends State<BuyUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}