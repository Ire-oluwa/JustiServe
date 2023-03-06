import 'package:get/get.dart';

class SplashController extends GetxController {
  RxDouble currentDoubleIndex = 0.0.obs;
  RxInt currentIntegerIndex = 0.obs;
  swipePage(index, reason) {
    currentIntegerIndex.value = index;
  }
}
