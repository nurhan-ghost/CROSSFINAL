import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/product.dart';
import 'providers/shoes_provider.dart';


final shoesProvider =
    FutureProvider<List<Product>>(
  (ref) async {
    return ShoesRepository()
        .getAllShoes();
  },
);

final favoriteShoesProvider =
    StateProvider<List<Product>>((ref) {
  return [];
});

final cartProvider =
    StateProvider<List<Product>>((ref) {
  return [];
});