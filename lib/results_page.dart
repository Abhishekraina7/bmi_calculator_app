import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          child: const Text('Jump Back'),
        ),
      ),

    );
  }
}
