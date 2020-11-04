import 'dart:math';
import 'package:bmi_calculator/constants.dart';

class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  String returnText;
  double _bmi;



  String calculateBMI(){
    _bmi = weight / pow((height/100),2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi > 25){
      returnText = 'Obese';
    }
    else if(_bmi > 23){
      returnText = 'OverWeight';
    }
    else if(_bmi > 18.5){
      returnText = 'Healthy';
    }
    else{
      returnText = 'UnderWeight';
    }
    return returnText;
  }

  String getInterpretation(){
    if(returnText == 'Obese'){
      return 'If You Don\'t Want To Get Buried Inside The Ground Then "THODA HIL DUL LIYA KAR BHAI!"';
    }
    else if(returnText == 'OverWeight'){
      return 'Say No When Someone Offers Food."DHARTI KE BHOJH EXERCISE KARLIYA KAR!"';
    }
    else if(returnText == 'Healthy'){
      return 'NICE! Keep Up the Good Work."AAP BILKUL FIT HO!"';
    }
    else{
      return 'Your Weight is too low."DIETING KA DHONG BAND KARDEY BHAI!"';
    }
  }

}