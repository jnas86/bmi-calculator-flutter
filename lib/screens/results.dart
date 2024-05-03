import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget{
  const ResultsPage({super.key});

  //
  // final String bmiResult;
  // final String resultText;
  // final String interpretation;

  @override
  Widget build(BuildContext context){

    final arguments = ModalRoute.of(context)?.settings.arguments as List<String>;
    final String bmiResult = arguments[0];
    final String resultText = arguments[1];
    final String interpretation = arguments[2];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    interpretation,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'RECALCULATE'
          )
        ],
      )
    );
  }
}