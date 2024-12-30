import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_mate/auth/screens/login_screen.dart';
import 'package:trip_mate/auth/screens/register_screen.dart';
import 'package:trip_mate/screens/home_lists.dart';
import 'package:trip_mate/screens/start_manager.dart';
import 'package:trip_mate/screens/welcome.dart';

// Configuración de GoRouter
// Configuración de GoRouter
final GoRouter appRouter = GoRouter(
  initialLocation: '/', // Empieza con StartManager
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartManager(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const Welcome(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/HomeLists',
      builder: (context, state) => const HomeLists(),
    ),
    GoRoute(
      path: '/RegisterScreen',
      builder: (context, state) => RegisterScreen(),
    ),
  ],
);
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
