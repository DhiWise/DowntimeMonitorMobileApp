import '../controller/service_status_controller.dart';
import 'package:get/get.dart';

class ServiceStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceStatusController());
  }
}
