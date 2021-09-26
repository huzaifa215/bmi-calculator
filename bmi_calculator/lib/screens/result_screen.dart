import 'package:bmi_calculator/data/data_file.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String finalResult;

  const ResultScreen(
      {Key key,
      this.bmiResult,
      this.resultText,
      this.interpretation,
      this.finalResult})
      : super(key: key);

  void _shareContent() {
    Share.share(finalResult);
  }

  void _shareText() async {
    try {
      await WcFlutterShare.share(
          sharePopupTitle: 'Share',
          subject: 'BMI Calculator',
          text: finalResult,
          mimeType: 'text/plain');
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Normal Body Range:",
                    textAlign: TextAlign.center,
                    style: kRangeTextStyle,
                  ),
                  Text(
                    "18,5-25 kg/m2",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FloatingActionButton(
                    foregroundColor: Colors.white,
                    hoverColor: Color(0x29EB1555),
                    backgroundColor: Color(0xFFEB1555),
                    elevation: 10,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FloatingActionButton(
                    foregroundColor: Colors.white,
                    hoverColor: Color(0x29EB1555),
                    backgroundColor: Color(0xFFEB1555),
                    elevation: 10,
                    onPressed: () {
                      _shareContent();
                    },
                    child: Icon(Icons.share),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
