import 'package:get/get.dart';
import 'package:dio/dio.dart' as D;
import 'package:noor_s_application1/models/OneProduct.dart';
import 'package:noor_s_application1/models/Product.dart';

import '../utils.dart'; // Assuming the model class is correctly named

class ProductsController extends GetxController {
  var products = <Products>[].obs;
  var productsSection = <Products>[].obs;
  var productstype = <Products>[].obs;
  var Searchproducts = <Products>[].obs; /// Use RxList<Product> for consistent naming
  var OneProduct = <oneProduct>[].obs; // Use RxList<Product> for consistent naming
  final D.Dio dio = D.Dio();
  var isLoading = false.obs;
  bool isLoading2 = false;
  RxString selectedColor = ''.obs;
  RxString selectedSize = ''.obs;
  double totalPrice = 0;
  int totalQuantity=0;
  var totalPricecart = 0.0.obs;
  List<Map<String, dynamic>> cartProductList = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> favProductList = <Map<String, dynamic>>[];
  final number = 0.obs;
  void incrementNumber() {
    number.value++;
  }

  void decrementNumber() {
    if (number.value > 0) {
      number.value--;
    }
  }
  @override
  void onInit() {
    fetchData();
    gettypecontroller(2);
    super.onInit();
  }
  Future<void> fetchData() async {
    try {
      isLoading(true);

      final response = await dio.get('http://zadstorely.ly/public/api/products');
      final data = response.data as Map<String, dynamic>;

      if (data != null) {
        final productList = data['data'] as List;

        // Create a Set to store unique product IDs
        final uniqueProductIds = <String>{};
        final uniqueProducts = <Products>[];

        for (final item in productList) {
          final product = Products.fromJson(item);

          // Check if ID is already present in the set
          if (!uniqueProductIds.contains(product.id)) {
            uniqueProductIds.add(product.id);
            uniqueProducts.add(product);
          }
        }

        products(uniqueProducts); // Update products with unique items
        print(uniqueProducts.first);
      }
    } catch (error) {
      print("Error fetching products: $error");
    } finally {
      isLoading(false);
    }
  }
  Future<void> gettypecontroller(int type) async {
    try {

      isLoading(true);
      final response = await dio.get('http://zadstorely.ly/public/api/products?type=$type');

      final data = response.data as Map<String, dynamic>; // Access data as a map


      if (data != null) {


        // Extract the product list from the API response
        final productList = data['data'] as List;
        if (type==2){


        productstype(productList.map((e) => Products.fromJson(e)).toList()); // Map to Product objects
        print("productList.first");
        print(productList.first);
        }

      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching products: $error");
    } finally {
      isLoading(false);
    }
  }
  Future<void> getProductsSection(int section,  int sex) async {
    try {
      isLoading(true);

      final response = await dio.get('http://zadstorely.ly/public/api/products?section=$section&sex=$sex');
      final data = response.data as Map<String, dynamic>;

      print('http://zadstorely.ly/public/api/products?section=$section&sex=$sex');
      if (data != null) {
        final productList = data['data'] as List;

        // Use a Set to store unique product IDs
        final uniqueProductIds = <String>{};
        final uniqueProducts = <Products>[];

        for (final item in productList) {
          final product = Products.fromJson(item);

          // Check if ID is already seen
          if (!uniqueProductIds.contains(product.id)) {
            uniqueProductIds.add(product.id);
            uniqueProducts.add(product);
          }
        }

        productsSection(uniqueProducts); // Pass only unique products

        print("productsSection.length");
        print(uniqueProducts.length); // Print the number of unique products
      }
    } catch (error) {
      // Handle error appropriately
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

        Searchproducts(productList.map((e) => Products.fromJson(e)).toList()); // Map to Product objects
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
        OneProduct.assignAll([product]);
        print("sizes: ${product.sizes.first.size}");// Assign a single product to the list

      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching product: $error");
    } finally {
      isLoading2 = false;
    }
  }

  Future<void> addtocart(int productid,int quantity) async {
    try {

      isLoading2 = true;
      D.FormData formData = D.FormData.fromMap({
        'quantity': quantity,
        'id': productid
      });
      D.Options options = D.Options(
        headers: {
          'Authorization': 'Bearer $Token',
          'Content-Type': 'application/json',
        },
      );
      final response = await dio.post('http://zadstorely.ly/public/api/cart/add',  data: formData,  options: options);
      final response2 = await dio.post('https://zadstorely.ly/public/api/checkout',  options: options);
      print("response.data");
      print(response.statusCode);
      final data = response.data as Map<String, dynamic>; // Access data as a map

      print(data);
      if (data != null) {
        // Extract the product from the API response
        final product = oneProduct.fromJson(data);
        print("Productss: {product}");
        OneProduct.assignAll([product]);
        print("sizes: ${product.sizes.first.size}");// Assign a single product to the list

      }
    } catch (error) {
      // Handle error appropriately (e.g., print error message or display error UI)
      print("Error fetching product: $error");
    } finally {
      isLoading2 = false;
    }
  }

  void setSelectedColor(String color) {
    selectedColor.value = color;
  }
  void setSelectedSize(String size) {
    selectedSize.value = size;

  }
  void addfavProduct({
    required int id,
    required String name,
    required String image,
    required double price,
  }) {
    final product = {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
    };

    favProductList.add(product);
    //cartProductList.clear();
    print("cartProductList");
    print(favProductList.length);
  }
  void createProduct({
    required int id,
    required String name,
    required String image,
    required int quantity,
    String? colors,
    String? size,
    required double price,
  }) {
    final product = {
      'id': id,
      'name': name,
      'image': image,
      'quantity': quantity,
      'colors': colors,
      'size': size,
      'price': price,
    };

    cartProductList.add(product);
    //cartProductList.clear();
    print("cartProductList");
    print(cartProductList.length);
    totalQuantity+= int.parse(quantity.toString());
    totalPrice += price*quantity;

    /*
    for (var product in cartProductList) {
      totalPrice += product['price'];
      totalQuantity += int.=(product['quantity'].toString());
    }
     */
    print("totalQuantity");
    print(totalQuantity);
    print("totalPrice");
    print(totalPrice);
  }
  void deleteProduct(int id) {
    print("Product with ID ");
    cartProductList.removeWhere((product) => product['id'] == id);
    print("Product with ID $id has been deleted from cartProductList");
    totalPrice=0;
    totalQuantity=0;
    for (var product in cartProductList) {
      totalPrice += product['price'];
      totalQuantity += int.parse(product['quantity'].toString());
    }
  }

  void RemoveProducts() {
    print("Product with ID ");
    cartProductList.clear();


      totalPrice = 0;
      totalQuantity =0 ;

  }
}