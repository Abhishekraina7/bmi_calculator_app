import 'package:flutter/material.dart';
import 'splash_Screen.dart';

//This file for deciding the theme of our application
void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Why this not changing the color of the app bar
        appBarTheme: const AppBarTheme(color:Color(0xFF0A0D22)),  // Solved the Appbar color not changing problem
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        colorScheme: ColorScheme.fromSwatch().copyWith(  //accent color is derp
      secondary: Colors.purple),
        textTheme:const TextTheme(bodyMedium: TextStyle(color: Colors.white)), // for white use (0xFFFFFFFF)

      ),
      home: const Splashscreen(),
    );
  }
}





