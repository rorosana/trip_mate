import 'package:go_router/go_router.dart';
import 'package:trip_mate/assistant/assistant_screens/select_assistant_screen.dart';
import 'package:trip_mate/auth/screens/login_screen.dart';
import 'package:trip_mate/auth/screens/register_screen.dart';
import 'package:trip_mate/screens/home_lists.dart';
import 'package:trip_mate/screens/start_manager.dart';
import 'package:trip_mate/screens/welcome.dart';

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
      path: '/SelectAssistant',
      builder: (context, state) => const SelectAssistantScreen(),
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
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
