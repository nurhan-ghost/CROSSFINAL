import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

import '../providers/cart_provider.dart';
import '../providers/favorite_provider.dart';

class ProductDetailsScreen
    extends ConsumerWidget {
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final favorites =
        ref.watch(
      favoriteProvider,
    );

    final isFavorite =
        favorites.any(
      (item) =>
          item.id ==
          product.id,
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(
                    favoriteProvider
                        .notifier,
                  )
                  .toggleFavorite(
                    product,
                  );
            },

            icon: Icon(
              isFavorite
                  ? Icons.favorite
                  : Icons
                      .favorite_border,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment
                  .start,

          children: [
            // IMAGE
            AspectRatio(
              aspectRatio: 1.2,

              child: Image.network(
                product.image,

                fit: BoxFit.cover,

                errorBuilder:
                    (
                      context,
                      error,
                      stackTrace,
                    ) {
                  return const Center(
                    child: Icon(
                      Icons.image,
                      size: 80,
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.all(
                24,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [
                  Text(
                    product.brand,

                    style: Theme.of(
                      context,
                    )
                        .textTheme
                        .bodyLarge,
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  Text(
                    product.title,

                    style: Theme.of(
                      context,
                    )
                        .textTheme
                        .headlineMedium
                        ?.copyWith(
                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  Text(
                    '\$${product.price}',

                    style: const TextStyle(
                      fontSize: 28,

                      fontWeight:
                          FontWeight
                              .bold,
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color:
                            Colors.amber,
                      ),

                      const SizedBox(
                        width: 6,
                      ),

                      Text(
                        product.rating
                            .toString(),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  Text(
                    product.description ??
                        'No description',
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  SizedBox(
                    width:
                        double.infinity,

                    child:
                        ElevatedButton(
                      onPressed: () {
                        ref
                            .read(
                              cartProvider
                                  .notifier,
                            )
                            .addToCart(
                              product,
                            );

                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${product.title} added to cart',
                            ),
                          ),
                        );
                      },

                      child:
                          const Text(
                        'Add To Cart',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}