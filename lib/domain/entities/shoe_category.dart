class ShoeCategory {
  final String name;
  final int numberOfProducts;
  final String imagePath;
  final String brand;
  final String tagline;

  ShoeCategory({
    required this.name,
    required this.numberOfProducts,
    required this.imagePath,
    required this.brand,
    required this.tagline,
  });
}

List<ShoeCategory> categories = [
  ShoeCategory(
    name: 'Running',
    numberOfProducts: 18,
    imagePath: 'assets/categories/running.jpg',
    brand: 'Nike',
    tagline: 'RUN FAST',
  ),

  ShoeCategory(
    name: 'Basketball',
    numberOfProducts: 14,
    imagePath: 'assets/categories/basketball.jpg',
    brand: 'Jordan',
    tagline: 'FLY HIGH',
  ),

  ShoeCategory(
    name: 'Lifestyle',
    numberOfProducts: 25,
    imagePath: 'assets/categories/lifestyle.jpg',
    brand: 'Adidas',
    tagline: 'STREET STYLE',
  ),

  ShoeCategory(
    name: 'Classic',
    numberOfProducts: 15,
    imagePath: 'assets/categories/classic.jpg',
    brand: 'New Balance',
    tagline: 'TIMELESS',
  ),
];