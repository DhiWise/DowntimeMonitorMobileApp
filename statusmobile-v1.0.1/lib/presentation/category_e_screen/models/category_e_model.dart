import 'package:get/get.dart';
import '../../category_c_screen/models/category_c_item_model.dart';
import 'category_item_model.dart';

class CategoryEModel {
  RxList<CategoryCItemModel> categoryItemList =
      RxList.filled(0, CategoryCItemModel());
}
