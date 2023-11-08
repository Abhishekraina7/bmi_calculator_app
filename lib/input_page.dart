//This file decides the layout of our application
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'Reusable_card.dart';

const Color activeCardcolour = Color(0xFF1D1E33);
const Color inactiveCardcolour = Color(0xFF111328);
const Color bottomBarcolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactiveCardcolour;
  Color femalecardcolor = inactiveCardcolour;
  // male == 1 && female ==2
  void gesture(int gender) {
    if (gender == 1) {
      if (malecardcolor == inactiveCardcolour) {
        malecardcolor = activeCardcolour;
        femalecardcolor = inactiveCardcolour;
      }
      else {
        malecardcolor = inactiveCardcolour;
      }
    }
      if (gender == 2) {
        if (femalecardcolor == inactiveCardcolour) {
          femalecardcolor = activeCardcolour;
          malecardcolor = inactiveCardcolour;
        }
        else {
          femalecardcolor = inactiveCardcolour;
        }
      }
    }



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
                child: GestureDetector(
                  onTap: (){
                   setState(() {
                     gesture(1);

                   });
                  },
                  child: Resuablecard(colour: malecardcolor,
                  cardChild: UpperUi(cardicon: FontAwesomeIcons.mars,
                  cardtext: "Male",),
                  ),
                ),

              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      gesture(2);
                    });
                  },
                  child: Resuablecard( colour: femalecardcolor,
                  cardChild: UpperUi(cardicon: FontAwesomeIcons.venus,
                    cardtext: "Female",
                  ),),
                ),
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

