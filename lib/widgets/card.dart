
import 'package:exercise/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CardCat extends StatelessWidget {
  final String svgsrc;
  final String mytext; 
  final Function press;
  const CardCat({
    Key key, this.svgsrc, this.mytext, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
          child: Container(
       // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow:[ BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 15,
              spreadRadius: -15,
              //color: Colors.transparent,
            ),],
            ),

        child: Material(
          color: Colors.transparent,
                child: InkWell(
            onTap: press,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
              children: <Widget>[
                Spacer(),
                SvgPicture.asset(svgsrc),
                Spacer(),
                AutoSizeText(mytext,style: setTextStyle(size: 20,color: Colors.black),maxLines: 2,textAlign: TextAlign.center,),


                
                ],
            ),
                    ),
                  ),
        ),
        
      ),
    );
  }
}
