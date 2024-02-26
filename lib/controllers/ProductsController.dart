import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:noor_s_application1/models/OneProduct.dart';
import 'package:noor_s_application1/models/Product.dart'; // Assuming the model class is correctly named

class ProductsController extends GetxController {
  var products = <Products>[].obs; // Use RxList<Product> for consistent naming
  var OneProduct = <oneProduct>[].obs; // Use RxList<Product> for consistent naming
  final Dio dio = Dio();
  var isLoading = false.obs;
  bool isLoading2 = false;
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
  Future<void> fetchData() async {
    try {

      isLoading(true);
      final response = await dio.get('http://zadstorely.ly/public/api/products');

      final data = response.data as Map<String, dynamic>; // Access data as a map

      if (data != null) {


        // Extract the product list from the API response
        final productList = data['data'] as List;

        products(productList.map((e) => Products.fromJson(e)).toList()); // Map to Product objects

        print(productList.first);
      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching products: $error");
    } finally {
      isLoading(false);
    }
  }
  Future<void> getproduct(name) async {
    try {

      isLoading(true);
      final response = await dio.get('http://zadstorely.ly/public/api/products?search=$name');

      final data = response.data as Map<String, dynamic>; // Access data as a map

      if (data != null) {


        // Extract the product list from the API response
        final productList = data['data'] as List;

        products(productList.map((e) => Products.fromJson(e)).toList()); // Map to Product objects
        print("productList");
        print(productList.first);
      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching products: $error");
    } finally {
      isLoading(false);
    }
  }
  Future<void> getoneProduct(int id) async {
    try {

      isLoading2 = true;

      final response = await dio.get('http://zadstorely.ly/public/api/products/$id');

      final data = response.data as Map<String, dynamic>; // Access data as a map

      print(data);
      if (data != null) {
        // Extract the product from the API response
        final product = oneProduct.fromJson(data);
        print("Productss: {product}");
        OneProduct.assignAll([product]); // Assign a single product to the list

      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching product: $error");
    } finally {
      isLoading2 = false;
    }
  }
}