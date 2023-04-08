import '../controller/on_boarding_one_controller.dart';
import '../models/sliderbuyartfrompremi_one_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderbuyartfrompremiOneItemWidget extends StatelessWidget {
  SliderbuyartfrompremiOneItemWidget(this.sliderbuyartfrompremiOneItemModelObj);

  SliderbuyartfrompremiOneItemModel sliderbuyartfrompremiOneItemModelObj;

  var controller = Get.find<OnBoardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            227,
          ),
          margin: getMargin(
            left: 46,
            right: 44,
          ),
          child: Text(
            "msg_buy_art_from_pr".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistBold24,
          ),
        ),
        Container(
          width: getHorizontalSize(
            319,
          ),
          margin: getMargin(
            top: 8,
          ),
          child: Text(
            "msg_lorem_ipsum_dol".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRegular16.copyWith(
              letterSpacing: getHorizontalSize(
                0.16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
