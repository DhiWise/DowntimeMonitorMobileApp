import '../category_c_screen/widgets/category_c_item_widget.dart';
import '../category_e_screen/models/category_e_model.dart';
import 'controller/category_c_controller.dart';
import 'models/category_c_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statusmobile/core/app_export.dart';

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
              decoration: BoxDecoration(
                color: ColorConstant.gray50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          48.00,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            17.00,
                          ),
                          right: getHorizontalSize(
                            17.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: getSize(
                                36.00,
                              ),
                              width: getSize(
                                36.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgDrawericon2,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  4.00,
                                ),
                                bottom: getVerticalSize(
                                  8.00,
                                ),
                              ),
                              child: Text(
                                "Services",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.textstylepoppinssemibold16
                                    .copyWith(
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  letterSpacing: 1.00,
                                ),
                              ),
                            ),
                            Container(
                              height: getSize(
                                36.00,
                              ),
                              width: getSize(
                                36.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgCarticon2,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
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
                            decoration: AppDecoration.textstylepoppinsbold14,
                            child: Text(
                              "Go To Status Page",
                              textAlign: TextAlign.center,
                              style: AppStyle.textstylepoppinsbold14.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                              ),
                            ),
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapCategoryE() {
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
