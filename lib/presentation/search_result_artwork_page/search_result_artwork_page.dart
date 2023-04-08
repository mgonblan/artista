import '../search_result_artwork_page/widgets/gridrectangle2909_item_widget.dart';
import 'controller/search_result_artwork_controller.dart';
import 'models/gridrectangle2909_item_model.dart';
import 'models/search_result_artwork_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultArtworkPage extends StatelessWidget {
  SearchResultArtworkController controller =
      Get.put(SearchResultArtworkController(SearchResultArtworkModel().obs));

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
                    left: 26,
                    top: 28,
                    right: 22,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_4_artwork_result".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistMedium16Gray100,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Obx(
                          () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                288,
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
                            itemCount: controller.searchResultArtworkModelObj
                                .value.gridrectangle2909ItemList.length,
                            itemBuilder: (context, index) {
                              Gridrectangle2909ItemModel model = controller
                                  .searchResultArtworkModelObj
                                  .value
                                  .gridrectangle2909ItemList[index];
                              return Gridrectangle2909ItemWidget(
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
      ),
    );
  }
}
