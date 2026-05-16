import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super([]);

  void addToCart(Product product) {
    state = [...state, product];
  }

  void removeFromCart(Product product) {
    state = state.where(
      (item) => item.id != product.id,
    ).toList();
  }

  bool isInCart(Product product) {
    return state.any(
      (item) => item.id == product.id,
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
    StateNotifierProvider<CartNotifier, List<Product>>(
  (ref) => CartNotifier(),
);