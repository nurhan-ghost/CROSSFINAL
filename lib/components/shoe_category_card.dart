import 'package:flutter/material.dart';

import '../../domain/entities/shoe_category.dart';

class ShoeCategoryCard extends StatelessWidget {
  final ShoeCategory category;

  const ShoeCategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        );

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      category.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // DARK OVERLAY
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.15),
                        Colors.black.withOpacity(0.45),
                      ],
                    ),
                  ),
                ),

                // CATEGORY LABEL
                Positioned(
                  left: 16,
                  top: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      category.brand.toUpperCase(),
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),

                // ROTATED TEXT
                Positioned(
                  right: -12,
                  bottom: 32,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      category.tagline,
                      style: textTheme.headlineSmall?.copyWith(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // BOTTOM INFO
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    '${category.numberOfProducts} products',
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}