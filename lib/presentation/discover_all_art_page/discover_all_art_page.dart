import '../discover_all_art_page/widgets/listrectangle2910_item_widget.dart';
import 'controller/discover_all_art_controller.dart';
import 'models/discover_all_art_model.dart';
import 'models/listrectangle2910_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DiscoverAllArtPage extends StatelessWidget {
  DiscoverAllArtController controller =
      Get.put(DiscoverAllArtController(DiscoverAllArtModel().obs));

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
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 10,
                  right: 24,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: controller.discoverAllArtModelObj.value
                        .listrectangle2910ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectangle2910ItemModel model = controller
                          .discoverAllArtModelObj
                          .value
                          .listrectangle2910ItemList[index];
                      return Listrectangle2910ItemWidget(
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
    );
  }
}
