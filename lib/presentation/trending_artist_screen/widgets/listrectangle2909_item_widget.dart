import '../controller/trending_artist_controller.dart';
import '../models/listrectangle2909_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2909ItemWidget extends StatelessWidget {
  Listrectangle2909ItemWidget(this.listrectangle2909ItemModelObj,
      {this.onTapArtistcard});

  Listrectangle2909ItemModel listrectangle2909ItemModelObj;

  var controller = Get.find<TrendingArtistController>();

  VoidCallback? onTapArtistcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapArtistcard?.call();
        },
        child: Container(
          decoration: AppDecoration.fillGray90001,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2907109x109,
                    height: getSize(
                      109,
                    ),
                    width: getSize(
                      109,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse6,
                    height: getSize(
                      109,
                    ),
                    width: getSize(
                      109,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2912109x109,
                    height: getSize(
                      109,
                    ),
                    width: getSize(
                      109,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 19,
                  right: 11,
                  bottom: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getSize(
                        18,
                      ),
                      margin: getMargin(
                        top: 11,
                        bottom: 11,
                      ),
                      padding: getPadding(
                        left: 6,
                        top: 1,
                        right: 6,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder9,
                      ),
                      child: Obx(
                        () => Text(
                          listrectangle2909ItemModelObj.rateTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold12Gray90001,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse42,
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
                        left: 11,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              listrectangle2909ItemModelObj
                                  .wilsonkorsgTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14Gray100,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Obx(
                              () => Text(
                                listrectangle2909ItemModelObj
                                    .followersCounterTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistMedium12Gray400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      height: getVerticalSize(
                        38,
                      ),
                      width: getHorizontalSize(
                        70,
                      ),
                      text: "lbl_followed".tr,
                      margin: getMargin(
                        top: 1,
                        bottom: 1,
                      ),
                      variant: ButtonVariant.FillGray100,
                      padding: ButtonPadding.PaddingAll11,
                      fontStyle: ButtonFontStyle.UrbanistMedium14Gray90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
