import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/shoe.dart';

class FavoriteNotifier extends StateNotifier<List<Shoe>> {
  FavoriteNotifier() : super([]);

  void toggleFavorite(Shoe shoe) {
    final exists = state.any((item) => item.id == shoe.id);

    if (exists) {
      state = state.where((item) => item.id != shoe.id).toList();
    } else {
      state = [...state, shoe];
    }
  }

  bool isFavorite(Shoe shoe) {
    return state.any((item) => item.id == shoe.id);
  }
}

final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, List<Shoe>>(
  (ref) => FavoriteNotifier(),
);