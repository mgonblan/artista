import '../discover_photogrophy_page/widgets/listrectangle2911_item_widget.dart';
import 'controller/discover_photogrophy_controller.dart';
import 'models/discover_photogrophy_model.dart';
import 'models/listrectangle2911_item_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DiscoverPhotogrophyPage extends StatelessWidget {
  DiscoverPhotogrophyController controller =
      Get.put(DiscoverPhotogrophyController(DiscoverPhotogrophyModel().obs));

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
                    itemCount: controller.discoverPhotogrophyModelObj.value
                        .listrectangle2911ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectangle2911ItemModel model = controller
                          .discoverPhotogrophyModelObj
                          .value
                          .listrectangle2911ItemList[index];
                      return Listrectangle2911ItemWidget(
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
