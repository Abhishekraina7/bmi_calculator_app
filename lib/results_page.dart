import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_card.dart';
import 'bottom_button.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.status, required this.result, required this.suggestion });
  final String status;
  final String result;
  final String suggestion;

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
          const Expanded(
              child: Text(' Your Result',style: kResulttitlestyle,),
          ),
          Expanded(
            flex: 5,
            child: Resuablecard(colour: kactiveCardcolour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  status.toUpperCase(),style: kResultstatusstyle,
                ),
                Text(
                  result.toUpperCase(),
                style: kFinalstyle,
                ),
                Center(
                  child: Text(suggestion,
                    style: kSuggestionmessagestyle,
                  ),
                ),
              ],
            ),
            ),

          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonName: 'RE-CALCULATE'),
          ],
      ),

      );
  }
}
