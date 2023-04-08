import '../search_result_artwork_one_page/widgets/gridrectangle2910_item_widget.dart';
import 'controller/search_result_artwork_one_controller.dart';
import 'models/gridrectangle2910_item_model.dart';
import 'models/search_result_artwork_one_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultArtworkOnePage extends StatelessWidget {
  SearchResultArtworkOneController controller = Get.put(
      SearchResultArtworkOneController(SearchResultArtworkOneModel().obs));

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
                    top: 28,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "lbl_4_artist_result".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistMedium16Gray100,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: Obx(
                          () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                258,
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
                            itemCount: controller.searchResultArtworkOneModelObj
                                .value.gridrectangle2910ItemList.length,
                            itemBuilder: (context, index) {
                              Gridrectangle2910ItemModel model = controller
                                  .searchResultArtworkOneModelObj
                                  .value
                                  .gridrectangle2910ItemList[index];
                              return Gridrectangle2910ItemWidget(
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
