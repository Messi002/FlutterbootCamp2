import 'dart:math';

class CalBrain {
  
  CalBrain(this._height, this._weight);

  final int _height;
  final int _weight;
   double _bmi=0;

  String calculateBMI(){
      double _bmi= _weight / pow(_height /100, 2);
      return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String interpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normaml body weight. You can eat a bit more.';
    }
  }

}