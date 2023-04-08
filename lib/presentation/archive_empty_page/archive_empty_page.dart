import 'controller/archive_empty_controller.dart';
import 'models/archive_empty_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ArchiveEmptyPage extends StatelessWidget {
  ArchiveEmptyController controller =
      Get.put(ArchiveEmptyController(ArchiveEmptyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 92,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMap,
                        height: getSize(
                          80,
                        ),
                        width: getSize(
                          80,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          264,
                        ),
                        margin: getMargin(
                          left: 31,
                          top: 25,
                          right: 31,
                        ),
                        child: Text(
                          "msg_keep_track_of_y".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtUrbanistBold18Gray1001,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          302,
                        ),
                        margin: getMargin(
                          left: 12,
                          top: 8,
                          right: 12,
                        ),
                        child: Text(
                          "msg_contract_galler".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtUrbanistMedium12Gray200,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          52,
                        ),
                        text: "lbl_explore_works".tr,
                        margin: getMargin(
                          top: 23,
                        ),
                        padding: ButtonPadding.PaddingAll15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
