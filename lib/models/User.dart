class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? address; // Optional field
  final String? token;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.token,

  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
        email: json['email'],
      phone: json['phone'],
      address: json['address'],
      token: json['token'],

    );
  }
}
