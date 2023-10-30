import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  // static const primaryColor = Color(0xFF0A0D22);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primaryColor: primaryColor,
        // Why this not changing the color of the app bar
        appBarTheme: const AppBarTheme(color:Color(0xFF0A0D22)),  // Solved the Appbar color not changing problem
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        colorScheme: ColorScheme.fromSwatch().copyWith(  //accent color is derp
      secondary: Colors.purple),

      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(// I am confused here
        title: const Center
          (child: Text('BMI CALCULATOR')),
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add,color: Colors.black),
      ),
    );
  }
}
