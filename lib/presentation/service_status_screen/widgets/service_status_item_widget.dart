import 'dart:convert';

import '../../../core/constants/redirectUrl.dart';
import '../../service_list_screen/models/service_list_item_model.dart';
import '../controller/service_status_controller.dart';
import '../models/service_status_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:status_check_mobile/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ServiceStatusItemWidget extends StatelessWidget {
  ServiceStatusItemWidget(this.categoryItemModelObj);

  ServiceListItemModel categoryItemModelObj;

  var controller = Get.find<ServiceStatusController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: getHorizontalSize(
            16.00,
          ),
          top: getVerticalSize(16.00)),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                24.00,
              ),
              top: getVerticalSize(
                23.00,
              ),
              bottom: getVerticalSize(
                23.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    categoryItemModelObj.Name.toString(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20.copyWith(
                      fontSize: getFontSize(
                        20,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        3.00,
                      ),
                    ),
                    child: Obx(() => Text(
                          categoryItemModelObj.Message.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16.copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              color: categoryItemModelObj.Status.value == true
                                  ? Colors.green
                                  : Colors.red),
                        )),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      onTapTxtSeemore(
                          categoryItemModelObj.RedirectUrl.toString());
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(top: 5),
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        29.46,
                      ),
                      width: getHorizontalSize(
                        90.00,
                      ),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "View Status",
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsSemiBold16.copyWith(
                          color: Colors.white,
                          fontSize: getFontSize(
                            10,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                29.00,
              ),
              top: getVerticalSize(
                25.00,
              ),
              right: getHorizontalSize(
                23.00,
              ),
              bottom: getVerticalSize(
                25.00,
              ),
            ),
            child: Container(
              height: getSize(
                50.00,
              ),
              width: getSize(
                50.00,
              ),
              child: categoryItemModelObj.Image.value
                      .toString()
                      .startsWith("https://")
                  ? Image.network(
                      categoryItemModelObj.Image.value,
                      height: getVerticalSize(
                        159.00,
                      ),
                      width: getHorizontalSize(
                        159.00,
                      ),
                      fit: BoxFit.fill,
                    )
                  : Image.memory(Base64Decoder()
                      .convert(categoryItemModelObj.Image.value.toString())),
            ),
          ),
        ],
      ),
    );
  }

  onTapTxtSeemore(String url) async {
    Uri _url = Uri.parse(url);
    _launchUrl(_url);
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
