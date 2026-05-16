import 'package:dio/dio.dart';

class SneakerService {
  final Dio dio = Dio();

  Future<List<dynamic>> getSneakers() async {
    try {
      final response = await dio.get(
        'https://dummyjson.com/products/category/mens-shoes',
      );

      final data = response.data;

      if (data is Map<String, dynamic>) {
        final products = List<dynamic>.from(
          data['products'] ?? [],
        );

        return products.map((json) {
          return {
            // SAME AS FIREBASE
            'id':
                json['id'].toString(),

            'name':
                json['title'] ?? '',

            'description':
                json['description'] ?? '',

            'imageUrl':
                json['thumbnail'] ?? '',

            'price':
                double.tryParse(
                      json['price']
                          .toString(),
                    ) ??
                    0,

            'rating':
                double.tryParse(
                      json['rating']
                          .toString(),
                    ) ??
                    4.5,

            'brand':
                json['brand'] ??
                'Unknown',
          };
        }).toList();
      }

      return [];
    } catch (e) {
      print(
        'Error fetching sneakers: $e',
      );

      return [];
    }
  }
}