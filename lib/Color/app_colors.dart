import 'package:flutter/material.dart';

enum AppThemeSelection {
  purple(
    label: 'Purple',
    color: Color(0xFF7C4DFF),
  ),

  lavender(
    label: 'Lavender',
    color: Color(0xFFB388FF),
  );

  const AppThemeSelection({
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;
}