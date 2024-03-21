class Order {
  final int id;
  final String user;
  final String createdAt;
  final List<Product> products;

  Order({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.products,
  });
}

class Product {
  final String name;
  final OrderedProduct ordered;

  Product({
    required this.name,
    required this.ordered,
  });
}

class OrderedProduct {
  final String orderId;
  final String productId;
  final String quantity;
  final String price;
  final String total;

  OrderedProduct({
    required this.orderId,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.total,
  });
}