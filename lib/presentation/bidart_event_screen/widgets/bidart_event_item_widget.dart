import '../controller/bidart_event_controller.dart';
import '../models/bidart_event_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BidartEventItemWidget extends StatelessWidget {
  BidartEventItemWidget(this.bidartEventItemModelObj, {this.onTapCardevent});

  BidartEventItemModel bidartEventItemModelObj;

  var controller = Get.find<BidartEventController>();

  VoidCallback? onTapCardevent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapCardevent?.call();
        },
        child: Container(
          padding: getPadding(
            all: 12,
          ),
          decoration: AppDecoration.fillGray90001,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2907200x227,
                    height: getVerticalSize(
                      178,
                    ),
                    width: getHorizontalSize(
                      211,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle2911,
                        height: getVerticalSize(
                          89,
                        ),
                        width: getHorizontalSize(
                          92,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle2912,
                        height: getVerticalSize(
                          89,
                        ),
                        width: getHorizontalSize(
                          92,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 4,
                  top: 28,
                  right: 12,
                  bottom: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            bidartEventItemModelObj.k154paris2022Txt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistBold18Gray100,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_on_auction".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistMedium12Gray400,
                                ),
                              ),
                              Container(
                                height: getSize(
                                  4,
                                ),
                                width: getSize(
                                  4,
                                ),
                                margin: getMargin(
                                  left: 9,
                                  top: 5,
                                  bottom: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray400,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 1,
                                ),
                                child: Obx(
                                  () => Text(
                                    bidartEventItemModelObj
                                        .k710apr2022Txt.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistMedium12Gray400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright1,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
