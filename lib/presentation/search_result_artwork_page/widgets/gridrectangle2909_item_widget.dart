import '../controller/search_result_artwork_controller.dart';
import '../models/gridrectangle2909_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridrectangle2909ItemWidget extends StatelessWidget {
  Gridrectangle2909ItemWidget(this.gridrectangle2909ItemModelObj);

  Gridrectangle2909ItemModel gridrectangle2909ItemModelObj;

  var controller = Get.find<SearchResultArtworkController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.medium,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              156,
            ),
            width: getSize(
              156,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle29077,
                  height: getSize(
                    156,
                  ),
                  width: getSize(
                    156,
                  ),
                  alignment: Alignment.center,
                ),
                CustomButton(
                  height: getVerticalSize(
                    26,
                  ),
                  width: getHorizontalSize(
                    84,
                  ),
                  text: "lbl_12h_23m_15".tr,
                  margin: getMargin(
                    left: 8,
                    top: 8,
                  ),
                  variant: ButtonVariant.FillBlack90066,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray50_1,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            decoration: AppDecoration.fillGray90001,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 11,
                  ),
                  child: Obx(
                    () => Text(
                      gridrectangle2909ItemModelObj.darkflowersTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold14Gray50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 8,
                  ),
                  child: Obx(
                    () => Text(
                      gridrectangle2909ItemModelObj.bymandalikTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold12Gray50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_current_bid".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistMedium12Gray400,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 37,
                          ),
                          child: Obx(
                            () => Text(
                              gridrectangle2909ItemModelObj.priceTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14Gray50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 17,
                  ),
                  padding: getPadding(
                    left: 48,
                    top: 8,
                    right: 48,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_place_a_bid".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold12Gray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
