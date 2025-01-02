import 'package:flutter/material.dart';

class SelectAssistantScreen extends StatefulWidget {
  const SelectAssistantScreen({super.key});

  @override
  SelectAssistantScreenState createState() => SelectAssistantScreenState();
}

class SelectAssistantScreenState extends State<SelectAssistantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slect assistant'),
      ),
      body: const Center(
        child: Text('Select your assistant'),
      ),
    );
  }
}
