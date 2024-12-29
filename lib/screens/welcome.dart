//the first screen only shows once

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wellllcome'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {},
          child: const Text('Continue'),
        )));
  }
}
