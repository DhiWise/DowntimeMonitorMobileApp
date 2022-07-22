import '../controller/category_c_controller.dart';
import '../models/category_c_item_model.dart';
import 'package:flutter/material.dart';
import 'package:statusmobile/core/app_export.dart';

// ignore: must_be_immutable
class CategoryCItemWidget extends StatelessWidget {
  CategoryCItemWidget(this.categoryCItemModelObj);

  CategoryCItemModel categoryCItemModelObj;

  var controller = Get.find<CategoryCController>();

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
                child: Image.network(
                  categoryCItemModelObj.Image.value,
                  height: getVerticalSize(
                    159.00,
                  ),
                  width: getHorizontalSize(
                    159.00,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
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
                          style: AppStyle.textstylepoppinssemibold20.copyWith(
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
                              decoration: AppDecoration.textstylepoppinsbold14,
                              child: Text(
                                "Add To WatchList",
                                textAlign: TextAlign.center,
                                style: AppStyle.textstylepoppinsbold14.copyWith(
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
