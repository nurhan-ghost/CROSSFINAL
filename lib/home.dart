import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';

import 'domain/entities/shoe_category.dart';
import 'models/shoe.dart';

import 'components/shoe_category_card.dart';
import 'components/shoe_landscape_card.dart';
import 'Color/color_button.dart';

class Home extends ConsumerStatefulWidget {
  const Home({
    super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
    required this.appTitle,
  });

  final ColorSelection colorSelected;
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final String appTitle;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        elevation: 4,
        backgroundColor: theme.colorScheme.surface,
        shadowColor: theme.shadowColor,
        actions: [
          ColorButton(
            changeColor: widget.changeColor,
            colorSelected: widget.colorSelected,
          ),
        ],
      ),

      body: IndexedStack(
        index: tab,
        children: [
          // CATEGORY SCREEN
          Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.72,
              ),
              itemBuilder: (context, index) {
                return ShoeCategoryCard(
                  category: categories[index],
                );
              },
            ),
          ),

          // PRODUCTS SCREEN
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
              itemCount: shoes.length,
              itemBuilder: (context, index) {
                return SneakerLandscapeCard(
                  product: shoes[index],
                );
              },
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
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Sneakers',
          ),
        ],
      ),
    );
  }
}