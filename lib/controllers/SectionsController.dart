import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:noor_s_application1/core/utils/priv.dart';
import 'package:noor_s_application1/models.dart';

class SectionsController extends GetxController {
  var products = <Product>[].obs;
  var isLoading = false.obs;

  var error = ''.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      error(''); // Clear any previous errors


      final response = await Dio().get("${private.url}getSections");
      if (response.statusCode == 200) {
        print("isLoading");
        print(isLoading);
        final data = response.data as List;
        products(data.map((e) => Product.fromJson(e)).toList());
        isLoading = false.obs;
        isLoading(false);
        isLoading.value = false;
        update();
      } else {
        isLoading.value = false;
        isLoading = false.obs;
        isLoading(false);
        error.value = 'Failed to fetch products';
        update();
      }
    } catch (e) {
      isLoading.value = false;
      isLoading = false.obs;
      isLoading(false);
      error.value = e.toString();
    } finally {
      isLoading.value = false;
       isLoading = false.obs;
      isLoading(false);
    }
  }
}