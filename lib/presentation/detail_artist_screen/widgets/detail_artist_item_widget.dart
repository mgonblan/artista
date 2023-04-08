import '../controller/detail_artist_controller.dart';
import '../models/detail_artist_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailArtistItemWidget extends StatelessWidget {
  DetailArtistItemWidget(this.detailArtistItemModelObj);

  DetailArtistItemModel detailArtistItemModelObj;

  var controller = Get.find<DetailArtistController>();

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
                  imagePath: ImageConstant.imgRectangle2907156x156,
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
                    92,
                  ),
                  text: "lbl_32h_14m_32s".tr,
                  margin: getMargin(
                    left: 8,
                    top: 8,
                  ),
                  variant: ButtonVariant.FillBlack90066,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray200,
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
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      detailArtistItemModelObj.abstractfacewomOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold14,
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
                      detailArtistItemModelObj.byselenaTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 15,
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
                              detailArtistItemModelObj.priceTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14Gray100,
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
