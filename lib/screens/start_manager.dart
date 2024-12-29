import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartManager extends StatefulWidget {
  const StartManager({super.key});

  @override
  StartManagerState createState() => StartManagerState();
}

class StartManagerState extends State<StartManager> {
  bool _hasSeenWelcomeScreen = false;

  @override
  void initState() {
    super.initState();
    _checkWelcomeScreen();
  }

  Future<void> _checkWelcomeScreen() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _hasSeenWelcomeScreen = prefs.getBool('hasSeenWelcomeScreen') ?? false;
    });

    if (!mounted) return;

    if (_hasSeenWelcomeScreen) {
      context.go('/HomeLists');
    } else {
      context.go('/Welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('startManager'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ));
  }
}
