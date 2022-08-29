import 'package:get/get.dart';

class CategoryCItemModel {
   Rx<String> Name = Rx('');
  Rx<String> Image = Rx('');
  Rx<String> Url = Rx('');
  Rx<String> Message = Rx('');
  Rx<bool> Status = Rx(false);
  Rx<String> RedirectUrl = Rx('');
  Rx<bool> IsSeleted = Rx(false);
}
