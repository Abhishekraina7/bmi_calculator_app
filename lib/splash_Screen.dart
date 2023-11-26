import 'dart:async';

import 'package:flutter/material.dart';
import 'input_page.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InputPage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color(0xFF0A0D22),
          child: const Text('BMI CALCI',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,color: Color(0xFFEB1555)),),
        ),
      ),
    );
  }
}
