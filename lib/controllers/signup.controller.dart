import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxString selectedItem = "Client".obs;
  final firmID = TextEditingController();
  final emailAddress = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  void selectItem(newItem) {
    selectedItem.value = newItem;
    update();
  }
}
