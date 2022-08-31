import 'package:get/get.dart';
import '../../service_list_screen/models/service_list_item_model.dart';
import 'service_status_item_model.dart';

class ServiceStatusModel {
  RxList<ServiceListItemModel> categoryItemList =
      RxList.filled(0, ServiceListItemModel());
}
