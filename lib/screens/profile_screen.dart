import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'favorites_screen.dart';

import 'orders_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              Text(
                'Profile',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // USER CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: theme.colorScheme.primary,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Logged in as',
                            style: theme.textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            user?.email ?? 'No Email',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // ORDERS BUTTON
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.receipt_long,
                ),
                title: const Text(
                  'Order History',
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OrdersScreen(),
                    ),
                  );
                },
              ),

              const Divider(),

              // FAVORITES
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.favorite_outline,
                ),
                title: const Text(
                  'Favorites',
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FavoritesScreen(),
                    ),
                  );
                },
              ),

              const Divider(),

              // CART
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.shopping_cart_outlined,
                ),
                title: const Text(
                  'Cart',
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                ),
                onTap: () {},
              ),

              const Spacer(),

              // LOGOUT
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  icon: const Icon(
                    Icons.logout,
                  ),
                  label: const Text(
                    'Logout',
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
