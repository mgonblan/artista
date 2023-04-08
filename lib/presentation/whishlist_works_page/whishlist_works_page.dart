import '../whishlist_works_page/widgets/gridrectangle2911_item_widget.dart';
import 'controller/whishlist_works_controller.dart';
import 'models/gridrectangle2911_item_model.dart';
import 'models/whishlist_works_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WhishlistWorksPage extends StatelessWidget {
  WhishlistWorksController controller =
      Get.put(WhishlistWorksController(WhishlistWorksModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(
                  left: 14,
                  top: 24,
                  right: 14,
                ),
                padding: getPadding(
                  all: 10,
                ),
                decoration: AppDecoration.fillGray900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 75,
                      ),
                      child: Obx(
                        () => GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              15,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              15,
                            ),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.whishlistWorksModelObj.value
                              .gridrectangle2911ItemList.length,
                          itemBuilder: (context, index) {
                            Gridrectangle2911ItemModel model = controller
                                .whishlistWorksModelObj
                                .value
                                .gridrectangle2911ItemList[index];
                            return Gridrectangle2911ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
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
