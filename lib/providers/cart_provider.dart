import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/shoe.dart';

class CartNotifier extends StateNotifier<List<Shoe>> {
  CartNotifier() : super([]);

  void addToCart(Shoe shoe) {
    state = [...state, shoe];
  }

  void removeFromCart(Shoe shoe) {
    state = state.where(
      (item) => item.id != shoe.id,
    ).toList();
  }

  bool isInCart(Shoe shoe) {
    return state.any(
      (item) => item.id == shoe.id,
    );
  }

  void clearCart() {
    state = [];
  }

  double get totalPrice {
    return state.fold(
      0,
      (sum, item) => sum + item.price,
    );
  }
}

final cartProvider =
    StateNotifierProvider<CartNotifier, List<Shoe>>(
  (ref) => CartNotifier(),
);