import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/favorite_provider.dart';

import '../components/shoe_landscape_card.dart';

class FavoritesScreen
    extends ConsumerWidget {
  const FavoritesScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final favorites =
        ref.watch(
      favoriteProvider,
    );

    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Favorites',
        ),
      ),

      body:
          favorites.isEmpty
              ? const Center(
                  child: Text(
                    'No favorites yet',
                  ),
                )
              : ListView.builder(
                  padding:
                      const EdgeInsets.all(
                    16,
                  ),

                  itemCount:
                      favorites.length,

                  itemBuilder:
                      (
                        context,
                        index,
                      ) {
                    final product =
                        favorites[index];

                    if (product ==
                        null) {
                      return const SizedBox();
                    }

                    return SneakerLandscapeCard(
                      product:
                          product,
                    );
                  },
                ),
    );
  }
}