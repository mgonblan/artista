import '../detail_event_page/widgets/card1_item_widget.dart';
import '../detail_event_page/widgets/card_item_widget.dart';
import 'controller/detail_event_controller.dart';
import 'models/card1_item_model.dart';
import 'models/card_item_model.dart';
import 'models/detail_event_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailEventPage extends StatelessWidget {
  DetailEventController controller =
      Get.put(DetailEventController(DetailEventModel().obs));

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
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 35,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 165,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_jakob_bergson".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistSemiBold18,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "lbl_25_works".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistMedium14Gray400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 129,
                                  bottom: 28,
                                ),
                                child: Text(
                                  "lbl_view_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistMedium16Deeporange400,
                                ),
                              ),
                              CustomImageView(
                                svgPath:
                                    ImageConstant.imgArrowrightDeepOrange400,
                                height: getSize(
                                  16,
                                ),
                                width: getSize(
                                  16,
                                ),
                                margin: getMargin(
                                  left: 8,
                                  top: 1,
                                  bottom: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            277,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                top: 17,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    12,
                                  ),
                                );
                              },
                              itemCount: controller.detailEventModelObj.value
                                  .cardItemList.length,
                              itemBuilder: (context, index) {
                                CardItemModel model = controller
                                    .detailEventModelObj
                                    .value
                                    .cardItemList[index];
                                return CardItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 26,
                            right: 165,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_mira_calzoni".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "lbl_25_works".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtUrbanistMedium14Gray400,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 145,
                                  top: 13,
                                  bottom: 13,
                                ),
                                child: Text(
                                  "lbl_view_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistMedium16Deeporange400,
                                ),
                              ),
                              CustomImageView(
                                svgPath:
                                    ImageConstant.imgArrowrightDeepOrange400,
                                height: getSize(
                                  16,
                                ),
                                width: getSize(
                                  16,
                                ),
                                margin: getMargin(
                                  left: 8,
                                  top: 15,
                                  bottom: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            278,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                top: 18,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    12,
                                  ),
                                );
                              },
                              itemCount: controller.detailEventModelObj.value
                                  .card1ItemList.length,
                              itemBuilder: (context, index) {
                                Card1ItemModel model = controller
                                    .detailEventModelObj
                                    .value
                                    .card1ItemList[index];
                                return Card1ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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
