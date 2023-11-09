//This file is used to make the code more resulable and simpler by eliminating the repeating portions of our interface
import "package:flutter/material.dart";

class Resuablecard extends StatelessWidget {
Resuablecard({required this.colour,this.cardChild});
final Color colour;
final Widget? cardChild;


@override
Widget build(BuildContext context) {

  return Container(
      margin: const EdgeInsets.all(15.0),
      height: 160,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
      child: cardChild);
}
}