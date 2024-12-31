import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Assistant extends Equatable {
  final String name;
  final String id;
  final IconData icon;
  final ThemeData theme;

  const Assistant({required this.name, required this.id, required this.icon, required this.theme});

  @override
  List<Object?> get props => [name, id, icon, theme];
}
