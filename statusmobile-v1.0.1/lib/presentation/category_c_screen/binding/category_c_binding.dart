import '../controller/category_c_controller.dart';
import 'package:get/get.dart';

class CategoryCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryCController());
  }
}
