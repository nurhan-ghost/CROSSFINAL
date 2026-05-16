import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/services/order_service.dart';

import '../providers/cart_provider.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final cartItems = ref.watch(cartProvider);

    final cartNotifier = ref.read(
      cartProvider.notifier,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                'Cart is empty',
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      final product = cartItems[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: ListTile(
                          title: Text(
                            product.title,
                          ),
                          subtitle: Text(
                            '\$${product.price}',
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              cartNotifier.removeFromCart(
                                product,
                              );
                            },
                            icon: const Icon(
                              Icons.delete,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$${cartNotifier.totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            final orderService = OrderService();

                            await orderService.placeOrder(
                              cartItems,
                              cartNotifier.totalPrice,
                            );

                            cartNotifier.clearCart();

                            if (context.mounted) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Order placed successfully',
                                  ),
                                ),
                              );

                              Navigator.pop(context);
                            }
                          },
                          child: const Text(
                            'Checkout',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
