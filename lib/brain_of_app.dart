
import 'dart:math';

class Calculations{

  Calculations({this.height,this.weight});

  final int ?height;
  final int ?weight;
  double _bmi = 0;

  String calculatemBMI()
  {
   _bmi = weight! / pow(height ! /100, 2);
    return _bmi.toStringAsFixed(1); //This function is able to convert the answer(double) to a single decimal place.
  }

 String getResult()
 {
   if(_bmi >= 25)
     {
       return 'Overweight';
     }
   else if(_bmi > 18.5 && _bmi < 25)
     {
       return 'Normal';
     }
   else{
     return 'Underweight';
   }

 }
  String getSuggestions()
  {
    if(_bmi >= 25)
    {
      return 'You are overwight, try to shed some weight for better health.';
    }
    else if(_bmi > 18.5 && _bmi < 25)
    {
      return 'You\'r weight is normal! Good job.';
    }
    else{
      return 'You have lower than normal body weight. You can eat bit more';
    }

  }


}