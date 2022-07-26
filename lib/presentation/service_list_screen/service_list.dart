import '../service_list_screen/widgets/service_list_item_widget.dart';
import '../service_status_screen/models/service_status_model.dart';
import 'controller/service_list_controller.dart';
import 'models/service_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:status_check_mobile/core/app_export.dart';
import 'package:status_check_mobile/widgets/custom_icon_button.dart';

class ServiceListScreen extends GetWidget<ServiceListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 17,
                      top: 20,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 9,
                            bottom: 8,
                          ),
                          child: Text(
                            "Services",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPoppinsSemiBold16.copyWith(
                              letterSpacing: 1.00,
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              onTapCategoryE();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                39.46,
                              ),
                              width: getHorizontalSize(
                                140.00,
                              ),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Colors.blue,
                              ),
                              child: Text(
                                "Go To Status Page",
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsSemiBold16.copyWith(
                                  color: Colors.white,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      top: 40,
                      right: 17,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            220.00,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            17.00,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            17.00,
                          ),
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller
                            .categoryCModelObj.value.categoryCItemList.length,
                        itemBuilder: (context, index) {
                          ServiceListItemModel model = controller
                              .categoryCModelObj.value.categoryCItemList[index];
                          return ServiceListItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapCategoryE() {
    if (controller.categoryCModelObj.value.categoryCItemList.value
            .where((element) => element.IsSeleted == true)
            .length >
        0) {
      Rx<ServiceStatusModel> categoryEModelObj = ServiceStatusModel().obs;
      categoryEModelObj.value.categoryItemList.value = controller
          .categoryCModelObj.value.categoryCItemList.value
          .where((element) => element.IsSeleted == true)
          .toList();
      Get.toNamed(
        AppRoutes.serviceStatusScreen,
        arguments: {
          'list': categoryEModelObj.value.categoryItemList.value,
        },
        // parameters: {
        // 'list': controller.categoryCModelObj.value.categoryCItemList.value,
        // },
      );
    }
  }
}
