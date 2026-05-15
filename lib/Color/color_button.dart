import 'package:flutter/material.dart';

import '../constants.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    required this.changeColor,
    required this.colorSelected,
  });

  final void Function(int) changeColor;
  final ColorSelection colorSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        Theme.of(context).colorScheme;

    return PopupMenuButton<int>(
      tooltip: 'Change Theme Color',
      icon: Icon(
        Icons.palette_outlined,
        color: colorScheme.primary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(18),
      ),
      elevation: 4,
      color: Colors.white,
      itemBuilder: (context) {
        return List.generate(
          ColorSelection.values.length,
          (index) {
            final currentTheme =
                ColorSelection.values[index];

            return PopupMenuItem<int>(
              value: index,
              enabled:
                  currentTheme != colorSelected,
              child: Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color:
                          currentTheme.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    currentTheme.label,
                    style: const TextStyle(
                      fontWeight:
                          FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      onSelected: changeColor,
    );
  }
}