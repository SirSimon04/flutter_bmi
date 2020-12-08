import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bmi/reusable_card.dart';
import 'constants.dart';
import 'buttom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.resultText, @required this.bmiResult, @required this.interpretation});

  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
            color: kExpandedCardActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                    child: Text(
                      resultText.toUpperCase(),
                  style: kStatusTextStyle,
                )),
                Center(
                  child: Text(
                      bmiResult,
                    style: kWeightTextStyle
                  ),
                ),
                Center(
                  child: Text(
                    interpretation,
                    style: kDisTextStyle,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
