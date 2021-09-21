import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';
class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color:activeColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      blurRadius: 1,
                      spreadRadius: 0.5),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
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
          ),
        ],
      ),
    );
  }
}
