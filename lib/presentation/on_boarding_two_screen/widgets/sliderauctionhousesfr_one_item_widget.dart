import '../controller/on_boarding_two_controller.dart';
import '../models/sliderauctionhousesfr_one_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderauctionhousesfrOneItemWidget extends StatelessWidget {
  SliderauctionhousesfrOneItemWidget(this.sliderauctionhousesfrOneItemModelObj);

  SliderauctionhousesfrOneItemModel sliderauctionhousesfrOneItemModelObj;

  var controller = Get.find<OnBoardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            301,
          ),
          margin: getMargin(
            left: 9,
            right: 9,
          ),
          child: Text(
            "msg_auction_houses_from".tr,
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
            top: 13,
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
