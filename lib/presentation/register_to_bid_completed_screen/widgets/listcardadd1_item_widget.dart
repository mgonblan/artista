import '../controller/register_to_bid_completed_controller.dart';
import '../models/listcardadd1_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listcardadd1ItemWidget extends StatelessWidget {
  Listcardadd1ItemWidget(this.listcardadd1ItemModelObj);

  Listcardadd1ItemModel listcardadd1ItemModelObj;

  var controller = Get.find<RegisterToBidCompletedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 17,
        right: 16,
        bottom: 17,
      ),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCardadd,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 7,
              bottom: 7,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listcardadd1ItemModelObj.creditcardTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistMedium12Gray400,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      listcardadd1ItemModelObj.k7256Txt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistMedium14Gray100,
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
