import '../controller/bid_controller.dart';
import '../models/bid_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BidItemWidget extends StatelessWidget {
  BidItemWidget(this.bidItemModelObj);

  BidItemModel bidItemModelObj;

  var controller = Get.find<BidController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray90001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle290780x80,
            height: getSize(
              140,
            ),
            width: getSize(
              140,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 15,
              right: 12,
              bottom: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 4,
                  ),
                  child: Obx(
                    () => Text(
                      bidItemModelObj.triplefaceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold14,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                    top: 6,
                  ),
                  child: Obx(
                    () => Text(
                      bidItemModelObj.byoliverTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: SizedBox(
                    width: getHorizontalSize(
                      163,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.gray600,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    145,
                  ),
                  margin: getMargin(
                    left: 4,
                    top: 16,
                  ),
                  child: Obx(
                    () => Text(
                      bidItemModelObj.timeTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistMedium12Gray4001,
                    ),
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
