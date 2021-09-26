import 'package:bmi_calculator/data/data_file.dart';
import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final Widget child;
  final Function onPress;

  const RoundIconButton({Key key, this.onPress, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: child,
      elevation: 6.0,
      splashColor: kActiveColor,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
    );
  }
}
