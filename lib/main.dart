import 'package:flutter/material.dart';
import 'package:trip_mate/core/app_router.dart';

// Configuración de GoRouter
// Configuración de GoRouter

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Assistant',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
      // home: LoginScreen(),
    );
  }
}
