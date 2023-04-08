import '../models/recentsearch_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecentsearchItemWidget extends StatelessWidget {
  RecentsearchItemWidget(this.recentsearchItemModelObj);

  RecentsearchItemModel recentsearchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 12,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          recentsearchItemModelObj.searchTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: ColorConstant.gray100,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w500,
          ),
        ),
        deleteIcon: CustomImageView(
          svgPath: ImageConstant.imgArrowrightGray100,
          height: getSize(
            10,
          ),
          width: getSize(
            10,
          ),
          margin: getMargin(
            left: 19,
          ),
        ),
        onDeleted: () {},
        selected: recentsearchItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray600,
        selectedColor: ColorConstant.gray600,
        shape: recentsearchItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.gray10099,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
              ),
        onSelected: (value) {
          recentsearchItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
