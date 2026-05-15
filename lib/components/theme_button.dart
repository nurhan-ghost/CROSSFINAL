import 'package:flutter/material.dart';

class AppThemeButton extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const AppThemeButton({
    super.key,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).brightness ==
            Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(
        right: 12,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .surfaceContainerHighest,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        tooltip: isDarkMode
            ? 'Light Mode'
            : 'Dark Mode',
        icon: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 250,
          ),
          child: Icon(
            isDarkMode
                ? Icons.light_mode_rounded
                : Icons.dark_mode_rounded,
            key: ValueKey(isDarkMode),
            color: const Color(
              0xFF7C4DFF,
            ),
          ),
        ),
        onPressed: onToggleTheme,
      ),
    );
  }
}