import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    final user =
        FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Order History',
        ),
      ),

      body: StreamBuilder<
          QuerySnapshot>(
        stream:
            FirebaseFirestore
                .instance
                .collection(
                  'orders',
                )
                .where(
                  'userId',
                  isEqualTo:
                      user?.uid,
                )
                .snapshots(),

        builder: (
          context,
          snapshot,
        ) {
          if (snapshot
                  .connectionState ==
              ConnectionState
                  .waiting) {
            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData ||
              snapshot
                  .data!
                  .docs
                  .isEmpty) {
            return const Center(
              child: Text(
                'No orders yet',
              ),
            );
          }

          final orders =
              snapshot.data!.docs;

          return ListView.builder(
            itemCount:
                orders.length,

            itemBuilder: (
              context,
              index,
            ) {
              final order =
                  orders[index];

              final data =
                  order.data()
                      as Map<
                        String,
                        dynamic
                      >;

              final items =
                  data['items']
                      as List;

              final total =
                  data['totalPrice'];

              return Card(
                margin:
                    const EdgeInsets.symmetric(
                  horizontal:
                      16,

                  vertical: 10,
                ),

                child: Padding(
                  padding:
                      const EdgeInsets.all(
                    16,
                  ),

                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                    children: [
                      Text(
                        'Order #${index + 1}',

                        style:
                            const TextStyle(
                          fontSize:
                              18,

                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),

                      ...items.map(
                        (
                          item,
                        ) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(
                              bottom:
                                  8,
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,

                              children: [
                                Expanded(
                                  child:
                                      Text(
                                    item['title'],
                                  ),
                                ),

                                Text(
                                  '\$${item['price']}',
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      const Divider(),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,

                        children: [
                          const Text(
                            'Total',

                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight
                                      .bold,
                            ),
                          ),

                          Text(
                            '\$${total.toString()}',

                            style:
                                const TextStyle(
                              fontWeight:
                                  FontWeight
                                      .bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}