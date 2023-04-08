import '../controller/discover_all_art_controller.dart';
import '../models/listrectangle2910_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2910ItemWidget extends StatelessWidget {
  Listrectangle2910ItemWidget(this.listrectangle2910ItemModelObj);

  Listrectangle2910ItemModel listrectangle2910ItemModelObj;

  var controller = Get.find<DiscoverAllArtController>();

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
                  imagePath: ImageConstant.imgRectangle2911,
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
                    89,
                  ),
                  text: "lbl_31h_12m_42s".tr,
                  margin: getMargin(
                    left: 8,
                    top: 8,
                  ),
                  variant: ButtonVariant.FillBlack90066,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray100_1,
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
                    listrectangle2910ItemModelObj.menscaleconcrerOneTxt.value,
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
                      listrectangle2910ItemModelObj.byandreasTxt.value,
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
                          left: 51,
                        ),
                        child: Obx(
                          () => Text(
                            listrectangle2910ItemModelObj.priceTxt.value,
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
