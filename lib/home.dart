import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Color/app_colors.dart';
import 'components/color_button.dart';
import 'components/theme_button.dart';

import 'components/shoe_category_card.dart';
import 'components/shoe_landscape_card.dart';

import 'domain/entities/shoe_category.dart';

import 'providers.dart';

class Home extends ConsumerStatefulWidget {
  const Home({
    super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
    required this.appTitle, required AppThemeSelection colorChanged,
  });

  final AppThemeSelection colorSelected;

  final void Function(
    bool useLightMode,
  ) changeTheme;

  final void Function(
    int value,
  ) changeColor;

  final String appTitle;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  int tab = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    final theme = Theme.of(context);

    final shoesAsync = ref.watch(shoesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        elevation: 4,
        backgroundColor: theme.colorScheme.surface,
        shadowColor: theme.shadowColor,
        actions: [
          AppThemeButton(
            onToggleTheme: () {
              final isDarkMode =
                  Theme.of(context).brightness == Brightness.dark;

              widget.changeTheme(
                isDarkMode,
              );
            },
          ),
          ThemeColorButton(
            changeColor: widget.changeColor,
            onColorChanged: widget.changeColor,
            selectedTheme: widget.colorSelected,
          ),
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: [
          // CATEGORY SCREEN
          Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.72,
              ),
              itemBuilder: (
                context,
                index,
              ) {
                return ShoeCategoryCard(
                  category: categories[index],
                );
              },
            ),
          ),

          // PRODUCTS SCREEN
          Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: shoesAsync.when(
              data: (shoes) {
                return ListView.builder(
                  itemCount: shoes.length,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return SneakerLandscapeCard(
                      product: shoes[index],
                    );
                  },
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (
                e,
                _,
              ) =>
                  Center(
                child: Text(
                  'Error: $e',
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (index) {
          setState(() {
            tab = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.category_outlined,
            ),
            selectedIcon: Icon(
              Icons.category,
            ),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            selectedIcon: Icon(
              Icons.shopping_bag,
            ),
            label: 'Sneakers',
          ),
        ],
      ),
    );
  }
}

