import '../models/trendingsearch_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TrendingsearchItemWidget extends StatelessWidget {
  TrendingsearchItemWidget(this.trendingsearchItemModelObj);

  TrendingsearchItemModel trendingsearchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 12,
          right: 12,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          trendingsearchItemModelObj.searchFiveTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: ColorConstant.gray50,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: trendingsearchItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray600,
        selectedColor: ColorConstant.gray600,
        shape: trendingsearchItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.gray5099,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
              ),
        onSelected: (value) {
          trendingsearchItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
