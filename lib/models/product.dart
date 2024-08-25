class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final String brand;
  final double discountPercentage;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.brand,
    required this.discountPercentage,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      thumbnail: json['thumbnail'],
      brand: json['brand'] ?? '', // Default to empty string if missing
      discountPercentage: (json['discountPercentage'] as num)
          .toDouble(), // Ensure conversion from num to double
      rating: (json['rating'] as num)
          .toDouble(), // Ensure conversion from num to double
    );
  }
}
