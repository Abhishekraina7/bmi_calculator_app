//This file contains the Icons and text that will act as the main UI for the user to navigate through the app
import 'package:flutter/material.dart';

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