import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelectionWidget extends StatefulWidget {
  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  Color femaleColor = inactiveColor;
  Color maleColor = inactiveColor;

// toggle the effect
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    // female pressed
    else {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateColor(1);
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: maleColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        blurRadius: 1,
                        spreadRadius: 0.5),
                  ],
                ),
                child: IconCard(
                  icon: FontAwesomeIcons.male,
                  label: "Male",
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateColor(2);
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: femaleColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        blurRadius: 1,
                        spreadRadius: 0.5),
                  ],
                ),
                child: IconCard(
                  icon: FontAwesomeIcons.female,
                  label: "Female",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconCard extends StatefulWidget {
  final IconData icon;
  final String label;

  IconCard({Key key, this.icon, this.label}) : super(key: key);

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          widget.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
