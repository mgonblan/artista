import '../inbox_page/widgets/inbox_item_widget.dart';
import 'controller/inbox_controller.dart';
import 'models/inbox_item_model.dart';
import 'models/inbox_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InboxPage extends StatelessWidget {
  InboxController controller = Get.put(InboxController(InboxModel().obs));

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
                    top: 30,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Padding(
                              padding: getPadding(
                                top: 15.5,
                                bottom: 15.5,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  327,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.gray600,
                                ),
                              ),
                            );
                          },
                          itemCount: controller
                              .inboxModelObj.value.inboxItemList.length,
                          itemBuilder: (context, index) {
                            InboxItemModel model = controller
                                .inboxModelObj.value.inboxItemList[index];
                            return InboxItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 18,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray600,
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
