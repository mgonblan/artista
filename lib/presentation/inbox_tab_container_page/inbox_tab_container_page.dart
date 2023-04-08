import 'controller/inbox_tab_container_controller.dart';
import 'models/inbox_tab_container_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/archive_empty_page/archive_empty_page.dart';
import 'package:artista/presentation/bid_page/bid_page.dart';
import 'package:artista/presentation/inbox_page/inbox_page.dart';
import 'package:artista/widgets/app_bar/appbar_iconbutton.dart';
import 'package:artista/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InboxTabContainerPage extends StatelessWidget {
  InboxTabContainerController controller =
      Get.put(InboxTabContainerController(InboxTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            70,
          ),
          title: Padding(
            padding: getPadding(
              left: 24,
            ),
            child: Text(
              "lbl_inbox".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistBold24Gray100,
            ),
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgMusic,
              margin: getMargin(
                left: 24,
                top: 10,
                right: 24,
                bottom: 10,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  31,
                ),
                width: getHorizontalSize(
                  262,
                ),
                margin: getMargin(
                  top: 23,
                ),
                child: TabBar(
                  controller: controller.frame427320529Controller,
                  labelColor: ColorConstant.deepOrange400,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorConstant.gray400,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: ColorConstant.deepOrange400,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_bids".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_inbox".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_archive".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  556,
                ),
                child: TabBarView(
                  controller: controller.frame427320529Controller,
                  children: [
                    BidPage(),
                    InboxPage(),
                    ArchiveEmptyPage(),
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
