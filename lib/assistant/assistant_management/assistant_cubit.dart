import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_mate/assistant/assistant_models/assistant_model.dart';

class AssistantCubit extends Cubit<Assistant?> {
  AssistantCubit() : super(null);

  void selectAssistant(Assistant assistant) {
    emit(assistant);
  }
}
