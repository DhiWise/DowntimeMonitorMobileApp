import 'package:status_check_mobile/presentation/service_list_screen/models/service_list_item_model.dart';
import '../../../core/constants/image.dart';

import '../../../core/constants/redirectUrl.dart';
import '/core/app_export.dart';
import 'package:status_check_mobile/presentation/service_list_screen/models/service_list_model.dart';

class ServiceListController extends GetxController {
  Rx<ServiceListModel> categoryCModelObj = new ServiceListModel().obs;

  @override
  void onReady() {
    super.onReady();
    ServiceListItemModel item = new ServiceListItemModel();
    item.Name.value = "Postman";
    item.Image.value = ImageUrl.postman;
    item.RedirectUrl.value = RedirectUrl.postman;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Amazon";
    item.Image.value = ImageUrl.amazon;
    item.RedirectUrl.value = RedirectUrl.amazon;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Slack";
    item.Image.value = ImageUrl.slack;
    item.RedirectUrl.value = RedirectUrl.slack;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Clickup";
    item.Image.value = ImageUrl.clickup;
    item.RedirectUrl.value = RedirectUrl.clickup;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Keka";
    item.Image.value = ImageUrl.keka;
    item.RedirectUrl.value = RedirectUrl.keka;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Canny";
    item.Image.value = ImageUrl.canny;
    item.RedirectUrl.value = RedirectUrl.canny;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Hubspot";
    item.Image.value = ImageUrl.hubspot;
    item.RedirectUrl.value = RedirectUrl.hubspot;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Hotjar";
    item.Image.value = ImageUrl.hotjar;
    item.RedirectUrl.value = RedirectUrl.hotjar;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Mixpanel";
    item.Image.value = ImageUrl.mixpanel;
    item.RedirectUrl.value = RedirectUrl.mixpanel;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Hoppscotch";
    item.Image.value = ImageUrl.hoppscotch;
    item.RedirectUrl.value = RedirectUrl.hoppscotch;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Vercel";
    item.Image.value = ImageUrl.vercel;
    item.RedirectUrl.value = RedirectUrl.vercel;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Github";
    item.Image.value = ImageUrl.github;
    item.RedirectUrl.value = RedirectUrl.github;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Gitlab";
    item.Image.value = ImageUrl.gitlab;
    item.RedirectUrl.value = RedirectUrl.gitlab;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Figma";
    item.Image.value = ImageUrl.figma;
    item.RedirectUrl.value = RedirectUrl.figma;
    categoryCModelObj.value.categoryCItemList.add(item);
    item = new ServiceListItemModel();
    item.Name.value = "Discord";
    item.Image.value = ImageUrl.discord;
    item.RedirectUrl.value = RedirectUrl.discord;
    categoryCModelObj.value.categoryCItemList.add(item);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
