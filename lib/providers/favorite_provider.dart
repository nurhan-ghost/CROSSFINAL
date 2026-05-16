import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

class FavoriteNotifier extends StateNotifier<List<Product>> {
  FavoriteNotifier() : super([]);

  void toggleFavorite(Product shoe) {
    final exists = state.any((item) => item.id == shoe.id);

    if (exists) {
      state = state.where((item) => item.id != shoe.id).toList();
    } else {
      state = [...state, shoe];
    }
  }

  bool isFavorite(Product shoe) {
    return state.any((item) => item.id == shoe.id);
  }
}


final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, List<Product>>(
  (ref) => FavoriteNotifier(),
);