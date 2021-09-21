import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        height: 200,
        width: 330,
        decoration: BoxDecoration(
          color: activeColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.5),
                blurRadius: 1,
                spreadRadius: 0.5),
          ],
        ),
      ),
    );
  }
}
