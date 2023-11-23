//This file decides the layout of our application
import 'package:bmi_calculator_app/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'Reusable_card.dart';
import 'constants.dart';
import 'brain_of_app.dart';
import 'bottom_button.dart';
//happy diwali

enum Genders{male,female} // emums for male and female selection representation

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Genders ? selectedGender;//It is a null aware operator, it helps the expression to be evaluated as null without causing any error
  int height = 180;
  int weight = 65;
  int age = 20;

   

  // Color maleCardColor = inactiveCardcolour;
  // Color femaleCardColor = inactiveCardcolour;
  // // male == 1 && female ==2
  // void gesture(Genders selectedGender) {
  //   //malecard got pressed
  //
  //   if (selectedGender == Genders.male) {
  //     if (maleCardColor == inactiveCardcolour) {
  //       maleCardColor = activeCardcolour;
  //       femaleCardColor = inactiveCardcolour;
  //     }
  //     else {
  //       maleCardColor = inactiveCardcolour;
  //     }
  //   }
  //   //femalecard got pressed
  //     if (selectedGender == Genders.female) {
  //       if (femaleCardColor == inactiveCardcolour) {
  //         femaleCardColor = activeCardcolour;
  //         maleCardColor = inactiveCardcolour;
  //       }
  //       else {
  //         femaleCardColor = inactiveCardcolour;
  //       }
  //     }
  //   }


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
                child: GestureDetector( //Gesture decector on the malecard
                  onTap: (){
                   setState(() {
                     (selectedGender = Genders.male);

                   });
                  },
                  child: Resuablecard(
                    colour: selectedGender==Genders.male ? kactiveCardcolour : kinactiveCardcolour,
                    cardChild: const UpperUi(cardicon: FontAwesomeIcons.mars,
                      cardtext: "Male",),
                  ),
                ),

              ),
              Expanded(
                child: GestureDetector(//Gesture detector on the Female card
                  onTap: (){
                    setState(() {
                      (selectedGender = Genders.female);
                    });
                  },
                  child: Resuablecard(
                    colour: selectedGender == Genders.female ? kactiveCardcolour : kinactiveCardcolour,
                    cardChild: const UpperUi(cardicon: FontAwesomeIcons.venus,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("HEIGHT",style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,  // In flutter if you want to align some text with some other text, you gotta specify how to do that and this helps in doing that.
                    children: <Widget>[
                      Text(height.toString(),
                        style:knumberstyle,
                      ),
                      const Text("cm",
                      style: TextStyle(fontSize: 18.0 ),),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                        inactiveTrackColor:  Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x1fEB1555),
                        activeTrackColor: Color(0xFFFFFFFF)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 0.0,
                      max: 250.0,

                      onChanged: (double newvalue){
                        setState(() {
                          height = newvalue.round();
                        }
                        );
                      },

                    ),
                  ),
                ],

              ),
            ),
          ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Resuablecard(colour: kactiveCardcolour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('WEIGHT',style: TextStyle(color: Colors.grey,fontSize: 18.0)
                          ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(weight.toString(),
                            style: knumberstyle),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          RoundIconButton(
                              icondata: FontAwesomeIcons.minus,
                              buttonPress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                          ),
                             const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(icondata: FontAwesomeIcons.plus,
                            buttonPress: (){
                              setState(() {
                                weight++;
                              });
                            },),
                          ],
                        ),
                      ],

                    ),
                  ),

                ),
                Expanded(
                  child: Resuablecard(colour: kactiveCardcolour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Age", style: TextStyle(color: Colors.grey,fontSize: 18.0)
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(age.toString(),
                            style: knumberstyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icondata: FontAwesomeIcons.minus,
                                  buttonPress: (){
                                setState(() {
                                  age--;
                                });}
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(icondata: FontAwesomeIcons.plus,
                                  buttonPress: (){
                                    setState(() {
                                      age++;
                                    });}
                              ),
                            ],
                          ),

                        ],
                      ),
                  ),
                  
                ),
              ]
          ),
          BottomButton(buttonName: 'CALCULATE',
            onTap: ()
            {
              Calculations Results = Calculations(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultsPage())
              );
            },
          ),
        ],
        ),
      );
  }
}



class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, @required this.icondata,@required this.buttonPress});
  final IconData ? icondata;
  final Function ? buttonPress;

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(

        elevation: 6.0,
        constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
    ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: buttonPress as void Function()?,
      child:Icon(icondata),
    );


  }
}




// With help of flutter outline we have avoided writing code again n again.
// Followin is a widget which returns the widget we want to use several times in our app
//

