class Product {
  final String id;
  final String title;
  final String image;
  final double price;
  final String brand;
  final double rating;
  final String description;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.brand,
    required this.description,
    required this.rating,
  });

  factory Product.fromJson(
  Map<String, dynamic> json,
) {
  return Product(
    id: json['id'].toString(),

    title:
        json['name'] ?? '',

    description:
        json['description'] ?? '',

    image:
        json['imageUrl'] ?? '',

    price:
        double.tryParse(
              json['price']
                  .toString(),
            ) ??
            0,

    rating:
        double.tryParse(
              json['rating']
                  .toString(),
            ) ??
            0,

    brand:
        json['brand'] ?? '',
  );
}
}