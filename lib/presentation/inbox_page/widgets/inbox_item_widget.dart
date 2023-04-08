import '../controller/inbox_controller.dart';
import '../models/inbox_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InboxItemWidget extends StatelessWidget {
  InboxItemWidget(this.inboxItemModelObj);

  InboxItemModel inboxItemModelObj;

  var controller = Get.find<InboxController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse4840x401,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20,
            ),
          ),
          margin: getMargin(
            bottom: 29,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Obx(
                    () => Text(
                      inboxItemModelObj.rhielmadsenTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 111,
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        inboxItemModelObj.durationTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistMedium12Gray400,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: getHorizontalSize(
                  262,
                ),
                margin: getMargin(
                  top: 10,
                  right: 13,
                ),
                child: Obx(
                  () => Text(
                    inboxItemModelObj.ihavespentagoodOneTxt.value,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistMedium14Gray4001,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
