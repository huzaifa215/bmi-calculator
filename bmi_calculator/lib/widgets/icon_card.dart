
import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          style: kLabelText,
        ),
      ],
    );
    // return
  }
}
