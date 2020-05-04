//import 'package:auto_size_text/auto_size_text.dart';
//import 'package:exercise/Screens/AllExercises.dart';
import 'package:exercise/themes.dart';
import 'package:exercise/widgets/Sessions.dart';
import 'package:exercise/widgets/navigate.dart';
import 'package:exercise/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigator(size: size),
      backgroundColor: primaryColor,
      body:  SingleChildScrollView(
              child: Stack(children: <Widget>[
          Container(
            height: size.height*0.45,
              decoration: BoxDecoration(
                  color: color1,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/meditation_bg.png',),fit: BoxFit.fitWidth,
                  ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.14
                ),
              Text('Meditation',style: setTextStyle(size:28,weight:FontWeight.w900),),
                SizedBox(height: 10),
               Text('3--10 MIN course'),
               SizedBox(height: 10),
                      SizedBox(
                        width: size.width * .6, // it just take 60% of total width
                        child: Text(
                          "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        ),
                      ),
                        SizedBox(
                          width: size.width*.50,
                          child: SearchBar()),
                          Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SeassionCard(
                            seassionNum: 1,
                            isDone: true,
                            press: () {},
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {},
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            press: () {},
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {},
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {},
                          ),
                          //SizedBox(height: 20),
                      Text(
                        "Meditation",
                        style: setTextStyle(size: 18,weight:FontWeight.bold)
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(1),
                        height: size.height*0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              //color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/Meditation_women_small.svg",
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Basic 2",
                                    style: setTextStyle(size:14)
                                  ),
                                  Text("Start your deepen you practice")
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6),
                              child: SvgPicture.asset("assets/icons/Lock.svg"),
                            ),
                          ],
                        ),
                      ),
                    
                        ],
                      ),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
