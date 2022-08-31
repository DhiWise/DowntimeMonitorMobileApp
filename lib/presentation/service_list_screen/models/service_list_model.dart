import 'package:get/get.dart';
import 'service_list_item_model.dart';

class ServiceListModel {
  RxList<ServiceListItemModel> categoryCItemList =
      RxList.filled(0, ServiceListItemModel());
}
