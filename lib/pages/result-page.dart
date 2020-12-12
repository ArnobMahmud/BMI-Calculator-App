import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/pages/home-page.dart';
import 'package:bmi_calculator/widgets/bottom-button.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({this.bmiresult, this.resulttext, this.interpretation});

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RebuildCard(
              colour: kActivecardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low! You should eat more.',
                    style: kResultDetailsTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
      ),
    );
  }
}
