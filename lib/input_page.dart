import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // I am confused here
        title: const Center
          (child: Text('BMI CALCULATOR')),
      ),
      body:
        Column(
        children: <Widget>[
           Row(
            children: <Widget>[
              Expanded(
                child: Resuablecard(colour: const Color(0xFF1D1E33)),
              ),
              Expanded(
                child: Resuablecard( colour: const Color(0xFF1D1E33)),
              ),
            ]
        ),
          Expanded(
            child: Container(
              margin:  const EdgeInsets.all(15.0),
              height: 50,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  color:  const Color(0xFF1D1E33)),
            ),
          ),
           Row(
              children: <Widget>[
                Expanded(
                  child: Resuablecard(colour: const Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: Resuablecard(colour: const Color(0xFF1D1E33)),
                ),
              ]
          ), ],
      ),

      );
  }
}

// With help of flutter outline we have avoided writing code again n again.
// Followin is a widget which returns the widget we want to use several times in our app
//

class Resuablecard extends StatelessWidget {
  Resuablecard({required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 200,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
          color: colour,
    ));
  }
}