import '../category_c_screen/models/category_c_item_model.dart';
import '../category_e_screen/widgets/category_item_widget.dart';
import 'controller/category_e_controller.dart';
import 'models/category_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statusmobile/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        decoration: BoxDecoration(color: ColorConstant.gray50),
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
                                          top: getVerticalSize(48.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(17.00),
                                              right: getHorizontalSize(17.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                    height: getSize(36.00),
                                                    width: getSize(36.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgDrawericon3,
                                                        fit: BoxFit.fill)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            4.00),
                                                        bottom: getVerticalSize(
                                                            8.00)),
                                                    child: Text(
                                                        "lbl_services".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textstylepoppinssemibold16
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        16),
                                                                letterSpacing:
                                                                    1.00))),
                                                Container(
                                                    height: getSize(36.00),
                                                    width: getSize(36.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgCarticon3,
                                                        fit: BoxFit.fill))
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(20.00),
                                      top: getVerticalSize(25.00),
                                      right: getHorizontalSize(20.00),
                                      bottom: getVerticalSize(23.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.categoryEModelObj
                                          .value.categoryItemList.length,
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
