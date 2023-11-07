import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: Resuablecard(colour: activeCardcolour,
                cardChild: UpperUi(cardicon: FontAwesomeIcons.mars,
                cardtext: "Male",),
                ),

              ),
              Expanded(
                child: Resuablecard( colour: activeCardcolour,
                cardChild: UpperUi(cardicon: FontAwesomeIcons.venus,
                  cardtext: "Female",
                ),),
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

class UpperUi extends StatelessWidget {
  UpperUi({this.cardicon,this.cardtext});
  final IconData? cardicon;
  final String? cardtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardicon,
          size: 100.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(cardtext!,style: const TextStyle(fontSize: 18,color: Colors.grey),)
      ],
    );
  }
}

// With help of flutter outline we have avoided writing code again n again.
// Followin is a widget which returns the widget we want to use several times in our app
//

class Resuablecard extends StatelessWidget {
    Resuablecard({required this.colour,this.cardChild});
  final Color colour;
  final Widget? cardChild;


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 200,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
          color: colour,
    ),
      child: cardChild);
  }
}