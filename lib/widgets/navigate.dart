

import 'package:exercise/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      height: size.height*0.08,
      padding: EdgeInsets.symmetric(horizontal:20,vertical:6),
      //shape: CircularNotchedRectangle(),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           NavigateButton(name: 'Today',icon: 'assets/icons/calendar.svg',tap: (){},),
           NavigateButton(name: 'All Exercises',icon: 'assets/icons/gym.svg',tap: (){},isActive: true,),
           NavigateButton(name: 'Settings',icon: 'assets/icons/Settings.svg',tap: (){},),
          
         ],
       ),
    );
  }
}

class NavigateButton extends StatelessWidget {
  final String name;
  final String icon;
  final Function tap;
  final bool isActive;
  //final Color color;
  const NavigateButton({
    Key key, this.name, this.icon, this.tap, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
                   child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(icon,color: isActive ? Colors.red : Colors.black),
          Text(name,style: setTextStyle(color: isActive ? Colors.red : Colors.black),),
        ],
      ),
    );
  }
}

