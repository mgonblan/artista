import '../controller/on_boarding_three_controller.dart';
import '../models/slideruploadandsell_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideruploadandsellItemWidget extends StatelessWidget {
  SlideruploadandsellItemWidget(this.slideruploadandsellItemModelObj);

  SlideruploadandsellItemModel slideruploadandsellItemModelObj;

  var controller = Get.find<OnBoardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            235,
          ),
          margin: getMargin(
            left: 42,
            right: 41,
          ),
          child: Text(
            "msg_upload_and_sell".tr,
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
