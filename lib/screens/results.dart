import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget{
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context){
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
          const Expanded(child:
            Text(
              'Your Result',
              style: kTitleTextStyle,
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
                  const Text(
                    'Normal',
                    style: kResultTextyle,
                  ),
                  const Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  const Text(
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