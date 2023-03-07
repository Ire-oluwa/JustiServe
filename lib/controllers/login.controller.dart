import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString selectedItem = "Client".obs;
  final firmID = TextEditingController();
  final emailAddress = TextEditingController();
  final password = TextEditingController();

  void selectItem(newItem) {
    selectedItem.value = newItem;
    update();
  }
}
