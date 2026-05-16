import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '/models/product.dart';

class OrderService {
  final FirebaseFirestore firestore =
      FirebaseFirestore.instance;

  final FirebaseAuth auth =
      FirebaseAuth.instance;

  Future<void> placeOrder(
    List<Product> products,
    double totalPrice,
  ) async {
    final user =
        auth.currentUser;

    if (user == null) return;

    await firestore
        .collection('orders')
        .add({
      'userId': user.uid,

      'userEmail':
          user.email,

      'totalPrice':
          totalPrice,

      'createdAt':
          Timestamp.now(),

      'items':
          products
              .map(
                (product) => {
                  'id':
                      product.id,

                  'title':
                      product.title,

                  'price':
                      product.price,

                  'image':
                      product.image,

                  'brand':
                      product.brand,
                },
              )
              .toList(),
    });
  }
}