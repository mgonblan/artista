import '../controller/search_result_artwork_one_controller.dart';
import '../models/gridrectangle2910_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridrectangle2910ItemWidget extends StatelessWidget {
  Gridrectangle2910ItemWidget(this.gridrectangle2910ItemModelObj);

  Gridrectangle2910ItemModel gridrectangle2910ItemModelObj;

  var controller = Get.find<SearchResultArtworkOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.medium,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle290722,
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
                    top: 14,
                  ),
                  child: Obx(
                    () => Text(
                      gridrectangle2910ItemModelObj.wilsonkorsgaardOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistMedium16Gray200,
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
                      gridrectangle2910ItemModelObj
                          .k85ktotalartworkOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.12,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 18,
                  ),
                  padding: getPadding(
                    left: 60,
                    top: 8,
                    right: 60,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_follow".tr,
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
