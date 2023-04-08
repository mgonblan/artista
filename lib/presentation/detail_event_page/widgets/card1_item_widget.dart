import '../controller/detail_event_controller.dart';
import '../models/card1_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card1ItemWidget extends StatelessWidget {
  Card1ItemWidget(this.card1ItemModelObj);

  Card1ItemModel card1ItemModelObj;

  var controller = Get.find<DetailEventController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 12,
        ),
        decoration: AppDecoration.medium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle290713,
              height: getSize(
                156,
              ),
              width: getSize(
                156,
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
                        card1ItemModelObj.abstractblueredOneTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBold14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 11,
                    ),
                    child: Text(
                      "lbl_4_500_7_500".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold14Gray400,
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      32,
                    ),
                    width: getHorizontalSize(
                      156,
                    ),
                    text: "lbl_place_a_bid".tr,
                    margin: getMargin(
                      top: 17,
                    ),
                    padding: ButtonPadding.PaddingAll11,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray900_1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
