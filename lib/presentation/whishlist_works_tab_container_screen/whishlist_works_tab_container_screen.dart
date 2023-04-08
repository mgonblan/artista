import 'controller/whishlist_works_tab_container_controller.dart';import 'package:artista/core/app_export.dart';import 'package:artista/presentation/whishlist_works_page/whishlist_works_page.dart';import 'package:artista/presentation/whislist_show_page/whislist_show_page.dart';import 'package:artista/widgets/app_bar/appbar_image.dart';import 'package:artista/widgets/app_bar/appbar_subtitle_1.dart';import 'package:artista/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class WhishlistWorksTabContainerScreen extends GetWidget<WhishlistWorksTabContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(66), leadingWidth: 48, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 16, bottom: 16), onTap: onTapArrowleft14), centerTitle: true, title: AppbarSubtitle1(text: "lbl_whislist".tr)), body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(31), width: getHorizontalSize(267), margin: getMargin(left: 24, top: 16), child: TabBar(controller: controller.frame427320530Controller, labelColor: ColorConstant.deepOrange400, labelStyle: TextStyle(fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), unselectedLabelColor: ColorConstant.gray400, unselectedLabelStyle: TextStyle(fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), indicatorColor: ColorConstant.deepOrange400, tabs: [Tab(child: Text("lbl_works".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_show".tr, overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(654), child: TabBarView(controller: controller.frame427320530Controller, children: [WhishlistWorksPage(), WhislistShowPage()]))])))); } 
onTapArrowleft14() { Get.back(); } 
 }