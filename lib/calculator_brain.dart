import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  double? _bmi;

  String? calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    //return bmi in the first decimal, as string
    return _bmi?.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi! >= 25){
      return 'Overwight';
    }else if(_bmi! > 18.5){
      return 'Normal';
    }else{
      return 'Underwight';
    }
  }

  String getInterpretation(){
    if (_bmi! >= 25){
      return 'You have higher than normal body.Excercise more';
    }else if(_bmi! > 18.5){
      return 'You have a normal body weight.Good Job!';
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}