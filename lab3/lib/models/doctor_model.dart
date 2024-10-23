class Doctor {
  final String name;
  final String specialty;
  final String clinic;
  final String rating;
  final String reviews;
  final String image;

  Doctor({
    required this.name,
    required this.specialty,
    required this.clinic,
    required this.rating,
    required this.reviews,
    required this.image,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      specialty: json['specialty'],
      clinic: json['clinic'],
      rating: json['rating'],
      reviews: json['reviews'],
      image: json['image'],
    );
  }
}
