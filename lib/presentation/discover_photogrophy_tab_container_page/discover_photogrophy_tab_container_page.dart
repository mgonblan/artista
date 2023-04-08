import 'controller/discover_photogrophy_tab_container_controller.dart';
import 'models/discover_photogrophy_tab_container_model.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/discover_all_art_page/discover_all_art_page.dart';
import 'package:artista/presentation/discover_photogrophy_page/discover_photogrophy_page.dart';
import 'package:artista/widgets/app_bar/appbar_iconbutton.dart';
import 'package:artista/widgets/app_bar/custom_app_bar.dart';
import 'package:artista/widgets/custom_drop_down.dart';
import 'package:artista/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DiscoverPhotogrophyTabContainerPage extends StatelessWidget {
  DiscoverPhotogrophyTabContainerController controller = Get.put(
      DiscoverPhotogrophyTabContainerController(
          DiscoverPhotogrophyTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          title: CustomDropDown(
            width: getHorizontalSize(
              140,
            ),
            focusNode: FocusNode(),
            icon: Container(
              margin: getMargin(
                left: 14,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgLock,
              ),
            ),
            hintText: "lbl_following".tr,
            margin: getMargin(
              left: 24,
            ),
            variant: DropDownVariant.None,
            fontStyle: DropDownFontStyle.UrbanistBold24,
            items: controller
                .discoverPhotogrophyTabContainerModelObj.value.dropdownItemList,
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgGrid24x24,
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
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.fieldController,
                hintText: "msg_search_artists".tr,
                margin: getMargin(
                  left: 24,
                  top: 35,
                  right: 24,
                ),
                prefix: Container(
                  margin: getMargin(
                    left: 24,
                    top: 14,
                    right: 12,
                    bottom: 14,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgContrast,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    52,
                  ),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      15,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.fieldController.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  392,
                ),
                margin: getMargin(
                  top: 26,
                ),
                child: TabBar(
                  controller: controller.groupController,
                  labelColor: ColorConstant.deepOrange400,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: ColorConstant.gray400,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                  indicatorColor: ColorConstant.deepOrange400,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_all_art".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_photography".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "msg_emerging_artist".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_pop_art".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  477,
                ),
                child: TabBarView(
                  controller: controller.groupController,
                  children: [
                    DiscoverAllArtPage(),
                    DiscoverPhotogrophyPage(),
                    DiscoverPhotogrophyPage(),
                    DiscoverPhotogrophyPage(),
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
