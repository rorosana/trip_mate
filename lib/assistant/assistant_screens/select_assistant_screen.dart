import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_mate/assistant/assistant_management/assistant_cubit.dart';
import 'package:trip_mate/assistant/assistant_models/assistant_list.dart';
import 'package:trip_mate/assistant/assistant_models/assistant_model.dart';

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
        title: const Text('Select assistant'),
      ),
      body: BlocProvider(
        create: (_) => AssistantCubit(),
        child: BlocBuilder<AssistantCubit, Assistant?>(
          builder: (context, selectedAssistant) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
                itemCount: assistants.length,
                itemBuilder: (context, index) {
                  final Assistant assistant = assistants[index];
                  final isSelected = assistant == selectedAssistant;

                  return GestureDetector(
                      onTap: () {
                        context.read<AssistantCubit>().selectAssistant(assistant);
                        //ruta a homeScreen pero con go_router
                        context.go('/login');
                      },
                      child: Card(
                          elevation: 4,
                          color: isSelected ? Colors.blue : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(assistant.icon, size: 48),
                              const SizedBox(height: 8),
                              Text(
                                assistant.name,
                              )
                            ],
                          )));
                });
          },
        ),
      ),
    );
  }
}
