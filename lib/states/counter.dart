import 'package:get/get.dart';

class Counter extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }

  void decrease() {
    count--;
    update();
  }
}
