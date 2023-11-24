
import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap,required this.buttonName});
  final Function onTap;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Container(
        color: kbottomBarcolor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomBarheight,
        child:  Center(child: Text(buttonName, style: kBottomtextstyle),
        ),
      ),
    );
  }
}