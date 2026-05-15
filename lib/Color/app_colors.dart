import 'package:flutter/material.dart';

enum AppThemeSelection {
  purple(
    label: 'Purple',
    color: Color(0xFF7C4DFF),
  ),

  lavender(
    label: 'Lavender',
    color: Color(0xFFB388FF),
  ),

  black(
    label: 'Black',
    color: Color(0xFF1E1E1E),
  ),

  white(
    label: 'White',
    color: Color(0xFFF5F5F5),
  );

  const AppThemeSelection({
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;
}