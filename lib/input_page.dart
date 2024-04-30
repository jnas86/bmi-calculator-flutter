import 'dart:math';

import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';


enum Gender{
  male,
  female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male ? kActiveCardColour: kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.female ? kActiveCardColour: kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'HEIGHT',
                      style: kLabelTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle
                        ),
                        Text(
                            'cm',
                            style: kLabelTextStyle
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0)
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: minSliderHeightValue,
                        max: maxSliderHeightValue,
                        activeColor: Color(0xFFEB1555),
                        onChanged: (double newValue){
                          setState(() {
                            setState(() {
                              height = newValue.round();
                            });
                          });
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: kActiveCardColour),
                  ),
                  Expanded(
                    child: ReusableCard(colour: kActiveCardColour),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        ));
  }
}

