
import 'package:exercise/themes.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding:
          EdgeInsets.symmetric(horizontal: 28, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(28.5),
      ),
      child: TextField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          focusColor: Color(0xfff28ea1),
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xfff28ea1),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

