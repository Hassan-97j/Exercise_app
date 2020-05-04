

import 'package:auto_size_text/auto_size_text.dart';
import 'package:exercise/Screens/Details.dart';
import 'package:exercise/themes.dart';
import 'package:exercise/widgets/card.dart';
import 'package:exercise/widgets/navigate.dart';
import 'package:exercise/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class AllExercise extends StatelessWidget {
  //var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      
      bottomNavigationBar: BottomNavigator(size: size),
      body: SafeArea(
              child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: secondaryColor,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                ),
              ),
            ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,

                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xfff28ea1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.menu),
                        ),
                      ),
                      AutoSizeText(
                        'Good Morning \nUser',
                        style: setTextStyle(
                          size: 28,
                        ),
                        maxLines: 2,
                      ),
                      SearchBar(),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 0.85,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            CardCat(mytext: 'Diet\nRecommendation', svgsrc: 'assets/icons/Hamburger.svg',press: (){},),
                            CardCat(mytext:'Kegel Exercises', svgsrc:"assets/icons/Excrecises.svg",press: (){},),
                            CardCat(mytext:"Meditation", svgsrc:"assets/icons/Meditation.svg",press: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return DetailsPage();
                              }));
                            },),
                            CardCat(mytext:"Yoga", svgsrc:"assets/icons/yoga.svg",press: (){},),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

