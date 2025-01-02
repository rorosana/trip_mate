import 'package:flutter/material.dart';
import 'package:trip_mate/assistant/assistant_models/assistant_model.dart';

final List<Assistant> assistants = [
  Assistant(
    name: 'Gato',
    id: 1,
    icon: Icons.nightlight_round,
    theme: ThemeData.dark(),
  ),
  Assistant(
    name: 'Perro',
    id: 2,
    icon: Icons.donut_large,
    theme: ThemeData(primarySwatch: Colors.green),
  ),
  Assistant(
    name: 'Conejo',
    id: 3,
    icon: Icons.rice_bowl_sharp,
    theme: ThemeData(primarySwatch: Colors.blue),
  ),
  Assistant(
    name: 'Pollo',
    id: 4,
    icon: Icons.perm_camera_mic_sharp,
    theme: ThemeData(primarySwatch: Colors.yellow),
  ),
];
