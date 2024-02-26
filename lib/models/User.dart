class User {
  final int id;
  final String name;
  final String email;
  final String? emailVerifiedAt;
  final String avatar;
  final String phone;
  final String address;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const User({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.avatar,
    required this.phone,
    required this.address,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['user']['id'],
    name: json['user']['name'],
    email: json['user']['email'],
    emailVerifiedAt: json['user']['email_verified_at'],
    avatar: json['user']['avatar'],
    phone: json['user']['phone'],
    address: json['user']['address'],
    createdAt: json['user']['created_at'] != null
        ? DateTime.parse(json['user']['created_at'])
        : null,
    updatedAt: json['user']['updated_at'] != null
        ? DateTime.parse(json['user']['updated_at'])
        : null,
  );
}

class ApiResponse {
  final User user;
  final String token;

  const ApiResponse({
    required this.user,
    required this.token,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    user: User.fromJson(json['user']),
    token: json['token'],
  );
}
