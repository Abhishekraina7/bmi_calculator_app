import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_card.dart';
import 'input_page.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                child: const Text(' Your Result',style: kResulttitlestyle,),
              ),
          ),
          Expanded(
            flex: 5,
            child: Resuablecard(colour: kactiveCardcolour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Normal',style: kResultstatusstyle,
                ),
                Text('18.9',
                style: kFinalstyle,
                ),
                Text('Your BMI result is low, you should eat more calories',
                  style: kSuggestionmessagestyle,
                ),
              ],
            ),
            ),

          ),
          BottomButton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonName: 'RE-CALCULATE'),
          ],
      ),

      );
  }
}
