import 'package:flutter/material.dart';

const Color activeCardcolour = Color(0xFF1D1E33);
const Color bottomBarcolor = Color(0xFFEB1555);

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
                child: Resuablecard(colour: activeCardcolour),
              ),
              Expanded(
                child: Resuablecard( colour: activeCardcolour),
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
                  child: Resuablecard(colour: activeCardcolour),
                ),
                Expanded(
                  child: Resuablecard(colour: activeCardcolour),
                ),
              ]
          ),
        Container(
         color: bottomBarcolor,
         margin: const EdgeInsets.only(top: 15.0),
          width: double.infinity,
          height: 80.0,
        ),],
      ),

      );
  }
}

// With help of flutter outline we have avoided writing code again n again.
// Followin is a widget which returns the widget we want to use several times in our app
//

class Resuablecard extends StatelessWidget {
    Resuablecard({required this.colour});
  final Color colour;

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