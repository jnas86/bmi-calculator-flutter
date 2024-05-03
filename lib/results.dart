import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child:
            Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
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
                    'Normal',
                    style: kResultTextyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Your BMI result is too low, you should eat more...',
                    style: kBodyTextStyle,
                  ),
                  BottomButton(
                    onTap: (){
                      Navigator.pushNamed(context, '/');
                    },
                    buttonTitle: 'RECALCULATE'
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}