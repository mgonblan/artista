import '../controller/register_to_bid_no_data_controller.dart';
import '../models/listcardadd_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListcardaddItemWidget extends StatelessWidget {
  ListcardaddItemWidget(this.listcardaddItemModelObj);

  ListcardaddItemModel listcardaddItemModelObj;

  var controller = Get.find<RegisterToBidNoDataController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCardadd,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
              bottom: 1,
            ),
            child: Obx(
              () => Text(
                listcardaddItemModelObj.creditcardTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistMedium16Gray100,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgPlus,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
        ],
      ),
    );
  }
}
