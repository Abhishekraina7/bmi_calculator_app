
import "package:flutter/material.dart";

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