import '../controller/category_e_controller.dart';
import 'package:get/get.dart';

class CategoryEBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryEController());
  }
}
