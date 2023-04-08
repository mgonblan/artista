import '../controller/home_controller.dart';
import '../models/listrectangle2907_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2907ItemWidget extends StatelessWidget {
  Listrectangle2907ItemWidget(this.listrectangle2907ItemModelObj);

  Listrectangle2907ItemModel listrectangle2907ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.fillGray90001,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getSize(
                  250,
                ),
                width: getSize(
                  250,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle2907,
                      height: getSize(
                        250,
                      ),
                      width: getSize(
                        250,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        36,
                      ),
                      width: getHorizontalSize(
                        112,
                      ),
                      text: "lbl_32h_14m_32s".tr,
                      margin: getMargin(
                        left: 16,
                        top: 16,
                      ),
                      variant: ButtonVariant.FillBlack90066,
                      padding: ButtonPadding.PaddingAll11,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold14WhiteA700,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Obx(
                  () => Text(
                    listrectangle2907ItemModelObj.abstractfacewomOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold18Gray100,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        93,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse932x32,
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                            margin: getMargin(
                              top: 1,
                              bottom: 2,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_creator".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistMedium12Gray400,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                  ),
                                  child: Obx(
                                    () => Text(
                                      listrectangle2907ItemModelObj
                                          .selenaTxt.value,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtUrbanistSemiBold14Gray100,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 63,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_current_bid".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistMedium12Gray400,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Obx(
                                () => Text(
                                  listrectangle2907ItemModelObj.priceTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold14Gray100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  38,
                ),
                width: getHorizontalSize(
                  218,
                ),
                text: "lbl_place_a_bid".tr,
                margin: getMargin(
                  top: 16,
                  bottom: 16,
                ),
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.UrbanistBold14Gray900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
