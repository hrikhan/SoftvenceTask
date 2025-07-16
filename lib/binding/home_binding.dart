import 'package:get/get.dart';
import 'package:softvence_task/controllar/home_controllar.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
