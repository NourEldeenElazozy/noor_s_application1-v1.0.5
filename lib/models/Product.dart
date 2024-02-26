class Products {
  final String id;
  final String name;
  final String section;

  // Optional field
  final String desc;

  final String sex;
  final double price;
  final String img;
  final double price2;
  final int count;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String sectionName;

  Products({
    required this.id,
    required this.name,
    required this.section,


    required this.desc,

    required this.sex,
    required this.price,
    required this.price2,
    required this.count,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.sectionName,
    required this.img,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      section: json['section'],


      desc: json['desc'],

      img: json['img'],
      sex: json['sex'],
      price: double.parse(json['price']),
      price2: double.parse(json['price2']),
      count: int.parse(json['count']),
      type: json['type'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      sectionName: json['section_name'],
    );
  }
}
