class City {
  final int id;
  final String name;
  final double price;
  final bool status;

  City({
    required this.id,
    required this.name,
    required this.price,
    required this.status,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      price: double.parse(json['price']),
      status: json['status'] == "1",
    );
  }
}