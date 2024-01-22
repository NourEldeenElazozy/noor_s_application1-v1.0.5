import 'package:get/get.dart';

class MyController extends GetxController {
  RxBool isButtonPressed = false.obs;

  void onTapButton() {
    isButtonPressed.toggle();
  }
}