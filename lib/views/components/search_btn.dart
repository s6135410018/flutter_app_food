import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10.0,
            ),
            width: isActive ? 300 : 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  kPrimaryColor,
                  kSecondaryColor.withOpacity(.8),
                ],
              ),
            ),
            child: isActive
                ? TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          padding: EdgeInsets.only(
                            top: 3.0,
                          ),
                          onPressed: () {
                            setState(() {
                              isActive = false;
                            });
                          },
                          icon: Icon(
                            Icons.search,
                            size: 40.0,
                            color: Colors.white,
                          )),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                : IconButton(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    onPressed: () {
                      setState(() {
                        isActive = true;
                      });
                    },
                    icon: Icon(
                      Icons.search,
                      size: 40.0,
                      color: Colors.white,
                    )),
          ),
        ],
      ),
    );
  }
}
