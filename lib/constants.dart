import 'package:flutter/material.dart';

enum ColorSelection {
  whitePurple('White Purple', Color(0xFF9C7BFF)),
  lavender('Lavender', Color(0xFFB799FF)),
  softPurple('Soft Purple', Color(0xFF8E7CFF)),
  violet('Violet', Color(0xFF7F5AF0)),
  deepViolet('Deep Violet', Color(0xFF5B3CC4)),
  lilac('Lilac', Color(0xFFD6C7FF)),
  icePurple('Ice Purple', Color(0xFFE9E3FF)),
  midnightPurple('Midnight Purple', Color(0xFF3E2A6D));

  const ColorSelection(this.label, this.color);

  final String label;
  final Color color;
}