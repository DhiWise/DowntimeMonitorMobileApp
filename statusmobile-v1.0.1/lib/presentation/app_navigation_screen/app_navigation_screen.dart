import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:statusmobile/core/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(20.00),
                                            top: getVerticalSize(10.00),
                                            right: getHorizontalSize(20.00),
                                            bottom: getVerticalSize(10.00)),
                                        child: Text("lbl_app_navigation".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.textstyleregular20
                                                .copyWith(
                                                    fontSize:
                                                        getFontSize(20))))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(20.00)),
                                        child: Text("msg_check_your_app".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.textstyleregular16
                                                .copyWith(
                                                    fontSize:
                                                        getFontSize(16))))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: EdgeInsets.only(
                                        top: getVerticalSize(5.00)),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900))
                              ])),
                      Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: SingleChildScrollView(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapCategoryC();
                                                },
                                                child: Container(
                                                    width: size.width,
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          20.00),
                                                                      top: getVerticalSize(
                                                                          10.00),
                                                                      right: getHorizontalSize(
                                                                          20.00),
                                                                      bottom: getVerticalSize(
                                                                          10.00)),
                                                                  child: Text(
                                                                      "lbl_category_c"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstyleregular20
                                                                          .copyWith(fontSize: getFontSize(20))))),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: size.width,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: getVerticalSize(
                                                                          5.00)),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray400))
                                                        ]))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapCategoryE();
                                                },
                                                child: Container(
                                                    width: size.width,
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          20.00),
                                                                      top: getVerticalSize(
                                                                          10.00),
                                                                      right: getHorizontalSize(
                                                                          20.00),
                                                                      bottom: getVerticalSize(
                                                                          10.00)),
                                                                  child: Text(
                                                                      "lbl_category_e"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstyleregular20
                                                                          .copyWith(fontSize: getFontSize(20))))),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: size.width,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: getVerticalSize(
                                                                          5.00)),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray400))
                                                        ])))
                                          ])))))
                    ]))));
  }

  onTapCategoryC() {
    Get.toNamed(AppRoutes.categoryCScreen);
  }

  onTapCategoryE() {
    Get.toNamed(AppRoutes.categoryEScreen);
  }
}
