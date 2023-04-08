import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray90001,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle290766x66,
            height: getSize(
              66,
            ),
            width: getSize(
              66,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 13,
              bottom: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    searchItemModelObj.abstractfacewomOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "lbl_by_selena".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold12,
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
