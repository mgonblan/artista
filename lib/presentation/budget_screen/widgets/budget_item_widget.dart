import '../controller/budget_controller.dart';
import '../models/budget_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BudgetItemWidget extends StatelessWidget {
  BudgetItemWidget(this.budgetItemModelObj);

  BudgetItemModel budgetItemModelObj;

  var controller = Get.find<BudgetController>();

  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
      width: getHorizontalSize(
        324,
      ),
      text: "lbl_under_500".tr,
      iconSize: getHorizontalSize(
        20,
      ),
      value: "lbl_under_500".tr,
      groupValue: controller.radioGroup.value,
      fontStyle: RadioFontStyle.UrbanistMedium16,
      isRightCheck: true,
      onChange: (value) {
        controller.radioGroup.value = value;
      },
    );
  }
}
