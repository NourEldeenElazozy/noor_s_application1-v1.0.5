import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:noor_s_application1/models/Orders.dart';

class OrderController extends GetxController {
  RxList<Order> orders = <Order>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchOrders();
  }

  Future<void> fetchOrders() async {
    try {
      final response = await http.get(Uri.parse('https://zadstorely.ly/public/api/orders/1/order_product'));
      final responseData = json.decode(response.body) as List<dynamic>;

      final List<Order> loadedOrders = responseData.map((orderData) {
        final List<Product> products = (orderData['products'] as List<dynamic>)
            .map((productData) => Product(
          name: productData['name'],
          ordered: OrderedProduct(
            orderId: productData['orderd']['order_id'],
            productId: productData['orderd']['product_id'],
            quantity: productData['orderd']['quantity'],
            price: productData['orderd']['price'],
            total: productData['orderd']['total'],
          ),
        ))
            .toList();

        return Order(
          id: orderData['id'],
          user: orderData['user'],
          createdAt: orderData['created_at'],
          products: products,
        );
      }).toList();

      orders.value = loadedOrders;
    } catch (error) {
      // تعامل مع الخطأ هنا
    }
  }
}