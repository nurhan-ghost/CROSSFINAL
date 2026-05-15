import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/shoe.dart';


final shoesProvider = Provider<List<Shoe>>((ref) {
  return shoes;
});

final favoriteShoesProvider =
    StateProvider<List<Shoe>>((ref) {
  return [];
});

final cartProvider =
    StateProvider<List<Shoe>>((ref) {
  return [];
});