import 'package:flutter/material.dart';

import '../Color/app_colors.dart';

class ThemeColorButton extends StatelessWidget {
  const ThemeColorButton({
    super.key,
    required this.onColorChanged,
    required this.selectedTheme,
  });

  final void Function(int) onColorChanged;
  final AppThemeSelection selectedTheme;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return PopupMenuButton(
      tooltip: 'Change Theme Color',
      icon: Icon(
        Icons.palette_outlined,
        color: colorScheme.primary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 4,
      color: Colors.white,
      itemBuilder: (context) {
        return List.generate(
          AppThemeSelection.values.length,
          (index) {
            final currentTheme =
                AppThemeSelection.values[index];

            return PopupMenuItem(
              value: index,
              enabled: currentTheme != selectedTheme,
              child: Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: currentTheme.color,
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Text(
                    currentTheme.label,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      onSelected: onColorChanged,
    );
  }
}