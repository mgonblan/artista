import '../controller/popular_auction_vertical_view_controller.dart';
import '../models/listrectangle2908_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2908ItemWidget extends StatelessWidget {
  Listrectangle2908ItemWidget(this.listrectangle2908ItemModelObj);

  Listrectangle2908ItemModel listrectangle2908ItemModelObj;

  var controller = Get.find<PopularAuctionVerticalViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray90001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: getSize(
              140,
            ),
            width: getSize(
              140,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2907156x156,
                  height: getSize(
                    140,
                  ),
                  width: getSize(
                    140,
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
                  fontStyle: ButtonFontStyle.UrbanistSemiBold12WhiteA700_1,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 13,
              right: 16,
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listrectangle2908ItemModelObj.abstractfacewomOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Obx(
                    () => Text(
                      listrectangle2908ItemModelObj.byselenaTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Row(
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
                          left: 52,
                        ),
                        child: Obx(
                          () => Text(
                            listrectangle2908ItemModelObj.priceTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold14Gray100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    155,
                  ),
                  text: "lbl_place_a_bid".tr,
                  margin: getMargin(
                    top: 10,
                  ),
                  padding: ButtonPadding.PaddingAll11,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray900_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
