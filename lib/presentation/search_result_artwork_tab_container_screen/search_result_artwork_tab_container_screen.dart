import 'controller/search_result_artwork_tab_container_controller.dart';import 'package:artista/core/app_export.dart';import 'package:artista/presentation/search_result_artwork_one_page/search_result_artwork_one_page.dart';import 'package:artista/presentation/search_result_artwork_page/search_result_artwork_page.dart';import 'package:artista/widgets/app_bar/appbar_image.dart';import 'package:artista/widgets/app_bar/appbar_subtitle_2.dart';import 'package:artista/widgets/app_bar/custom_app_bar.dart';import 'package:artista/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class SearchResultArtworkTabContainerScreen extends GetWidget<SearchResultArtworkTabContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(40), leadingWidth: 48, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: onTapArrowleft6), centerTitle: true, title: AppbarSubtitle2(text: "lbl_search_result".tr)), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(top: 40), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: CustomSearchView(focusNode: FocusNode(), controller: controller.fieldController, hintText: "lbl_flowers".tr, margin: getMargin(left: 24, right: 24), alignment: Alignment.center, prefix: Container(margin: getMargin(left: 24, top: 14, right: 12, bottom: 14), child: CustomImageView(svgPath: ImageConstant.imgContrast)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {controller.fieldController.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600))))), Container(height: getVerticalSize(31), width: getHorizontalSize(261), margin: getMargin(left: 20, top: 26), child: TabBar(controller: controller.frameController, labelColor: ColorConstant.deepOrange400, labelStyle: TextStyle(fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), unselectedLabelColor: ColorConstant.gray400, unselectedLabelStyle: TextStyle(fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), indicatorColor: ColorConstant.deepOrange400, tabs: [Tab(child: Text("lbl_artwork".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_artist".tr, overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(673), child: TabBarView(controller: controller.frameController, children: [SearchResultArtworkPage(), SearchResultArtworkOnePage()]))])))))); } 
onTapArrowleft6() { Get.back(); } 
 }
