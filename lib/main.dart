import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_mate/assistant/assistant_management/assistant_cubit.dart';
import 'package:trip_mate/assistant/assistant_models/assistant_model.dart';
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
    return BlocProvider(
      create: (_) => AssistantCubit(),
      child: BlocBuilder<AssistantCubit, Assistant?>(
        builder: (context, selectedAssistant) {
          final theme = selectedAssistant?.theme ?? ThemeData.light(); // Default theme

          return MaterialApp.router(
            routerConfig: appRouter,
            theme: theme,
          );
        },
      ),
    );
  }
}
