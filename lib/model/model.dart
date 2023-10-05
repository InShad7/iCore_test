class MyCategory {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  MyCategory({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory MyCategory.fromJson(Map<String, dynamic> json) {
    return MyCategory(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }
}
