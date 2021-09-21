import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelectionWidget extends StatefulWidget {
  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: selectedGender == Gender.male
                      ? activeColor
                      : inactiveColor,
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
                  selectedGender = Gender.female;
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: selectedGender == Gender.female
                      ? activeColor
                      : inactiveColor,
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
    // return
  }
}
