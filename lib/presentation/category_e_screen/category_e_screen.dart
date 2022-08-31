import '../category_c_screen/models/category_c_item_model.dart';
import '../category_e_screen/widgets/category_item_widget.dart';
import 'controller/category_e_controller.dart';
import 'models/category_item_model.dart';
import 'package:flutter/material.dart';
import 'package:status_check_mobile/core/app_export.dart';
import 'package:status_check_mobile/widgets/custom_icon_button.dart';

class CategoryEScreen extends GetWidget<CategoryEController> {
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
                          margin: getMargin(left: 17, top: 48, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgMenu)),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 8),
                                    child: Text("Services Status",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16
                                            .copyWith(letterSpacing: 1.00))),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgBag))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 17, top: 25, right: 17, bottom: 23),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.categoryEModelObj.value
                                  .categoryItemList.length,
                              itemBuilder: (context, index) {
                                CategoryCItemModel model = controller
                                    .categoryEModelObj
                                    .value
                                    .categoryItemList[index];
                                return CategoryItemWidget(model);
                              })))
                    ]))))));
  }
}
