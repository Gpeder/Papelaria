class ProductModel {
  final String name;
  final String description;
  final String image;
  final double price;
  final List<String> images;

  ProductModel({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.images,
  });
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'images': images,
    };
  }
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'],
      description: map['description'],
      image: map['image'],
      price: map['price'],
      images: List<String>.from(map['images']),
    );
  }
}
