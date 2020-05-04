import 'package:exercise/themes.dart';
import 'package:flutter/material.dart';
import 'Screens/AllExercises.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: primaryColor, ),
      home: AllExercise(),
    );
  }
}

