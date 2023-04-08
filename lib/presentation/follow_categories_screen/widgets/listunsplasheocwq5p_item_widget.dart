import '../controller/follow_categories_controller.dart';
import '../models/listunsplasheocwq5p_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listunsplasheocwq5pItemWidget extends StatelessWidget {
  Listunsplasheocwq5pItemWidget(this.listunsplasheocwq5pItemModelObj);

  Listunsplasheocwq5pItemModel listunsplasheocwq5pItemModelObj;

  var controller = Get.find<FollowCategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplasheocwq5peras48x48,
          height: getSize(
            48,
          ),
          width: getSize(
            48,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              24,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 6,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listunsplasheocwq5pItemModelObj.nameartistonartTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistMedium16Gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Obx(
                  () => Text(
                    listunsplasheocwq5pItemModelObj.totalartworkTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgRecordcircle,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            top: 12,
            bottom: 12,
          ),
        ),
      ],
    );
  }
}
