import 'dart:convert';

import '../controller/service_list_controller.dart';
import '../models/service_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:status_check_mobile/core/app_export.dart';
import 'package:status_check_mobile/widgets/custom_button.dart';

// ignore: must_be_immutable
class ServiceListItemWidget extends StatelessWidget {
  ServiceListItemWidget(this.categoryCItemModelObj);

  ServiceListItemModel categoryCItemModelObj;

  var controller = Get.find<ServiceListController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: (categoryCItemModelObj.IsSeleted.value == true)
              ? const BoxDecoration(
                  border: Border(
                  top: BorderSide(width: 3.0, color: Color(0xFF00FF00)),
                  left: BorderSide(width: 3.0, color: Color(0xFF00FF00)),
                  right: BorderSide(width: 3.0, color: Color(0xFF00FF00)),
                  bottom: BorderSide(width: 3.0, color: Color(0xFF00FF00)),
                ))
              : const BoxDecoration(
                  border: Border(),
                ),
          height: getVerticalSize(
            208.00,
          ),
          width: getHorizontalSize(
            159.00,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: categoryCItemModelObj.Image.value
                          .toString()
                          .startsWith("https://")
                      ? Image.network(
                          categoryCItemModelObj.Image.value,
                          height: getVerticalSize(
                            159.00,
                          ),
                          width: getHorizontalSize(
                            159.00,
                          ),
                          fit: BoxFit.fill,
                        )
                      : Image.memory(Base64Decoder().convert(
                          categoryCItemModelObj.Image.value.toString()))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      22.00,
                    ),
                    top: getVerticalSize(
                      25.38,
                    ),
                    right: getHorizontalSize(
                      22.00,
                    ),
                    bottom: getVerticalSize(
                      25.38,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          categoryCItemModelObj.Name.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsSemiBold20.copyWith(
                              fontSize: getFontSize(
                                20,
                              ),
                              color: Colors.black),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            categoryCItemModelObj.IsSeleted.value =
                                !categoryCItemModelObj.IsSeleted.value;
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                11.00,
                              ),
                              top: getVerticalSize(
                                42.16,
                              ),
                              right: getHorizontalSize(
                                11.00,
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
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(16.0),
                                color: Colors.green,
                              ),
                              child: Text(
                                "Add To WatchList",
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsSemiBold16.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
