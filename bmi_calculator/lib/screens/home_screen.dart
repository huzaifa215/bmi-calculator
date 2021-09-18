import 'package:bmi_calculator/widgets/counter_widget.dart';
import 'package:bmi_calculator/widgets/gender_selection_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        toolbarHeight: 70,
        centerTitle: true,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //    // color: Color(0xFF0A0E21),
        //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
        //   ),
        // ),
      ),
      body: Column(
        children: [
          GenderSelectionWidget(),
          HeightWidget(),
          CounterWidget(),
        ],
      ),
    );
  }
}
