class oneProduct {
  final String id;
  final String name;
  final String section;

  final String? video;
  final String desc;
  final String mark;
  final String sex;
  final String price;
  final String price2;
  final String count;
  final String type;
  final List<Color> colors;
  final List<Image> images;

  oneProduct({
    required this.id,
    required this.name,
    required this.section,

    required this.video,
    required this.desc,
    required this.mark,
    required this.sex,
    required this.price,
    required this.price2,
    required this.count,
    required this.type,
    required this.colors,
    required this.images,
  });

  factory oneProduct.fromJson(Map<String, dynamic> json) {
    List<Color> colors = <Color>[];
    if (json['colors'] != null) {
      colors = List<Color>.from(json['colors'].map((color) => Color.fromJson(color)));
    }

    List<Image> images = <Image>[];
    if (json['image'] != null) {
      images = List<Image>.from(json['image'].map((image) => Image.fromJson(image)));
    }

    return oneProduct(
      id: json['product']['id'],
      name: json['product']['name'],
      section: json['product']['section'],

      video: json['product']['video'],
      desc: json['product']['desc'],
      mark: json['product']['mark'],
      sex: json['product']['sex'],
      price: json['product']['price'],
      price2: json['product']['price2'],
      count: json['product']['count'],
      type: json['product']['type'],
      colors: colors,
      images: images,
    );
  }
}

class Color {
  final String id;
  final String color;
  final String product;

  Color({
    required this.id,
    required this.color,
    required this.product,
  });

  factory Color.fromJson(Map<String, dynamic> json) {
    return Color(
      id: json['id'],
      color: json['color'],
      product: json['product'],
    );
  }
}

class Image {
  final String id;
  final String product;
  final String img;

  Image({
    required this.id,
    required this.product,
    required this.img,
  });

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      id: json['id'],
      product: json['product'],
      img: json['img'],
    );
  }
}