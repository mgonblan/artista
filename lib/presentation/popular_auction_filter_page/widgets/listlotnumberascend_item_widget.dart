import '../controller/popular_auction_filter_controller.dart';
import '../models/listlotnumberascend_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlotnumberascendItemWidget extends StatelessWidget {
  ListlotnumberascendItemWidget(this.listlotnumberascendItemModelObj);

  ListlotnumberascendItemModel listlotnumberascendItemModelObj;

  var controller = Get.find<PopularAuctionFilterController>();

  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
      width: getHorizontalSize(
        324,
      ),
      text: "msg_lot_number_asce".tr,
      iconSize: getHorizontalSize(
        20,
      ),
      value: "msg_lot_number_asce".tr,
      groupValue: controller.radioGroup.value,
      fontStyle: RadioFontStyle.UrbanistMedium16,
      isRightCheck: true,
      onChange: (value) {
        controller.radioGroup.value = value;
      },
    );
  }
}
