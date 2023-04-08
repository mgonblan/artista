import '../controller/whishlist_works_controller.dart';
import '../models/gridrectangle2911_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridrectangle2911ItemWidget extends StatelessWidget {
  Gridrectangle2911ItemWidget(this.gridrectangle2911ItemModelObj);

  Gridrectangle2911ItemModel gridrectangle2911ItemModelObj;

  var controller = Get.find<WhishlistWorksController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.medium,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle290780x80,
            height: getSize(
              156,
            ),
            width: getSize(
              156,
            ),
          ),
          Container(
            padding: getPadding(
              left: 8,
              top: 11,
              right: 8,
              bottom: 11,
            ),
            decoration: AppDecoration.fillGray90001,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    gridrectangle2911ItemModelObj.triplefaceTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Obx(
                    () => Text(
                      gridrectangle2911ItemModelObj.byoliverTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                    bottom: 2,
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
                          left: 36,
                        ),
                        child: Obx(
                          () => Text(
                            gridrectangle2911ItemModelObj.priceTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold14Gray100,
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
