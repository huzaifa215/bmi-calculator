import 'package:bmi_calculator/data/data_file.dart';
import 'package:bmi_calculator/widgets/icon_card.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  kGender selectedGender;
  int _sliderValue = 180;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = kGender.male;
                      });
                    },
                    color: selectedGender == kGender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconCard(
                      icon: FontAwesomeIcons.male,
                      label: "male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = kGender.female;
                      });
                    },
                    color: selectedGender == kGender.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconCard(
                      icon: FontAwesomeIcons.female,
                      label: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
                onPress: () {},
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          _sliderValue.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "cm",
                          style: kLabelText,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white.withOpacity(0.7),
                        trackHeight: 0.5,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                        inactiveTrackColor: Color(0xFF8D8E98),
                      ),
                      child: Slider(
                        value: _sliderValue.toDouble(),
                        min: 120.0,
                        max: 250.0,

                        label: _sliderValue.toString(),
                        onChanged: (double newValue) {
                          setState(() {
                            _sliderValue = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      onPress: () {},
                      color: kInactiveColor,
                      cardChild: Container()),
                ),
                Expanded(
                  child: ReuseableCard(
                      onPress: () {},
                      color: kInactiveColor,
                      cardChild: Container()),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
            foregroundColor:Colors.white,
            hoverColor: Color(0x29EB1555),
            backgroundColor:Color(0xFFEB1555),
                elevation: 10,
                heroTag: 1,
                onPressed: (){},child: Icon(Icons.arrow_forward)
            // FaIcon(
            //     FontAwesomeIcons.subscript,
            //   size: 25,
            // ),
            ),
          ),
        ],
      ),
    );
  }
}
