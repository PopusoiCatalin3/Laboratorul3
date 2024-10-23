class Center {
  final String name;
  final String address;
  final String rating;
  final String reviews;
  final String image;

  Center({
    required this.name,
    required this.address,
    required this.rating,
    required this.reviews,
    required this.image,
  });

  factory Center.fromJson(Map<String, dynamic> json) {
    return Center(
      name: json['name'],
      address: json['address'],
      rating: json['rating'],
      reviews: json['reviews'],
      image: json['image'],
    );
  }
}
