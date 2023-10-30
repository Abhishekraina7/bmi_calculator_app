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
        children: <Widget>[Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF1D1E33)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF1D1E33)),
                ),
              ),
            ]
        ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              height: 50,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xFF1D1E33)),
            ),
          ),
          Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFF1D1E33)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFF1D1E33)),
                  ),
                ),
              ]
          ), ],
      ),

      );
  }
}