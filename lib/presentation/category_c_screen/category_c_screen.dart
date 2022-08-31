import '../category_c_screen/widgets/category_c_item_widget.dart';
import '../category_e_screen/models/category_e_model.dart';
import 'controller/category_c_controller.dart';
import 'models/category_c_item_model.dart';
import 'package:flutter/material.dart';
import 'package:status_check_mobile/core/app_export.dart';
import 'package:status_check_mobile/widgets/custom_icon_button.dart';

class CategoryCScreen extends GetWidget<CategoryCController> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 17,
                      top: 48,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 36,
                          width: 36,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMenu,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                            bottom: 8,
                          ),
                          child: Text(
                            "Services",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16.copyWith(
                              letterSpacing: 1.00,
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 36,
                          width: 36,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgBag,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      top: 25,
                      right: 17,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            209.00,
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
                          CategoryCItemModel model = controller
                              .categoryCModelObj.value.categoryCItemList[index];
                          return CategoryCItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        onTapCategoryE();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              25.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              49.46,
                            ),
                            width: getHorizontalSize(
                              93.00,
                            ),
                            child: Text(
                              "Go To Status Page",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsSemiBold16.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                              ),
                            ),
                          )))
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
      controller.categoryCModelObj.value.categoryCItemList.value = controller
          .categoryCModelObj.value.categoryCItemList.value
          .where((element) => element.IsSeleted == true)
          .toList();
      Rx<CategoryEModel> categoryEModelObj = CategoryEModel().obs;
      categoryEModelObj.value.categoryItemList.value =
          controller.categoryCModelObj.value.categoryCItemList.value;
      Get.toNamed(
        AppRoutes.categoryEScreen,
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
