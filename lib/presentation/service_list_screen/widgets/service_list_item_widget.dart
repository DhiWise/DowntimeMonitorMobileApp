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
          padding: EdgeInsets.all(10),
          decoration: (categoryCItemModelObj.IsSeleted.value == true)
              ? BoxDecoration(
                  border: Border.all(width: 3.0, color: Color(0xFFe3e3e3)),
                )
              : BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.transparent),
                ),
          // ),
          height: getVerticalSize(
            208.00,
          ),
          width: getHorizontalSize(
            159.00,
          ),
          child: Column(
            // alignment: Alignment.bottomCenter,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: categoryCItemModelObj.Image.value
                          .toString()
                          .startsWith("https://")
                      ? Image.network(
                          categoryCItemModelObj.Image.value,
                          height: getVerticalSize(
                            100.00,
                          ),
                          width: getHorizontalSize(
                            159.00,
                          ),
                          fit: BoxFit.contain,
                        )
                      : Image.memory(
                          Base64Decoder().convert(
                              categoryCItemModelObj.Image.value.toString()),
                          height: 100,
                          fit: BoxFit.contain,
                        )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    // left: getHorizontalSize(
                    //   22.00,
                    // ),
                    top: getVerticalSize(
                      25.38,
                    ),
                    // right: getHorizontalSize(
                    //   22.00,
                    // ),
                    // bottom: getVerticalSize(
                    //   25.38,
                    // ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          categoryCItemModelObj.Name.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsSemiBold20.copyWith(
                              fontSize: getFontSize(
                                16,
                              ),
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            categoryCItemModelObj.IsSeleted.value =
                                !categoryCItemModelObj.IsSeleted.value;
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 6),
                            // height: getVerticalSize(
                            //   49.46,
                            // ),
                            // width: getHorizontalSize(
                            //   93.00,
                            // ),
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Colors.green,
                            ),
                            child: Text(
                              "+ WatchList",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsSemiBold16.copyWith(
                                fontSize: getFontSize(
                                  12,
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
