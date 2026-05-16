import 'package:chapter_16/data/services/sneaker_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/product.dart';

class ShoesRepository {
  final SneakerService _service =
      SneakerService();

  Future<List<Product>>
      getAllShoes() async {
    // API
    final apiSneakers =
        await _service.getSneakers();

    final apiProducts = apiSneakers
        .map<Product>(
          (shoe) =>
              Product.fromJson(shoe),
        )
        .toList();

    // FIREBASE
    final firebaseSnapshot =
        await FirebaseFirestore.instance
            .collection('shoes')
            .get();

    final firebaseProducts =
        firebaseSnapshot.docs
            .map(
              (doc) => Product.fromJson(
                doc.data(),
              ),
            )
            .toList();

    return [
      ...firebaseProducts,
      ...apiProducts,
    ];
  }
}