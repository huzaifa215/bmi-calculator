import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
           scaffoldBackgroundColor: Color(0xFF0A0E21),
           // textTheme: TextTheme(
           //   body1: TextStyle(
           //     color: Colors.white,
           //   )
           // ),
        ),
        // theme: ThemeData(
        //   // brightness: Brightness.dark,
        //   // appBarTheme: AppBarTheme(
        //   //   centerTitle: true,
        //   //   shadowColor: Colors.grey.shade600,
        //   //   elevation: 10,
        //   // ),
        //   primaryColor: Color(0xFF0A0E21),
        //  scaffoldBackgroundColor: Color(0xFF0A0E21),
        // //  textTheme: TextTheme(
        // //    body1: TextStyle(
        // //      color: Colors.white,
        // //    )
        // //  ),
        // //  // primarySwatch: Colors.blue,
        // // ),
        home: HomeScreen());
  }
}
