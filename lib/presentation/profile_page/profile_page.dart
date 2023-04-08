import 'controller/profile_controller.dart';import 'models/profile_model.dart';import 'package:artista/core/app_export.dart';import 'package:artista/widgets/app_bar/appbar_iconbutton.dart';import 'package:artista/widgets/app_bar/custom_app_bar.dart';import 'package:artista/widgets/custom_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(65), title: Padding(padding: getPadding(left: 24), child: Text("lbl_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold24Gray200)), actions: [AppbarIconbutton(svgPath: ImageConstant.imgSettings, margin: getMargin(left: 24, top: 10, right: 24, bottom: 10), onTap: onTapSettings)]), body: Container(width: double.maxFinite, padding: getPadding(all: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 6, right: 4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgUnsplash3jmfencl24m100x100, height: getSize(100), width: getSize(100), radius: BorderRadius.circular(getHorizontalSize(50))), Padding(padding: getPadding(top: 2, bottom: 4), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_ali_motion".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18Gray100), Padding(padding: getPadding(top: 7), child: Text("lbl_alihusnimotion2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray400)), Padding(padding: getPadding(top: 10), child: Row(children: [CustomButton(height: getVerticalSize(36), width: getHorizontalSize(103), text: "lbl_642_follower".tr, variant: ButtonVariant.OutlineGray100, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray200), CustomButton(height: getVerticalSize(36), width: getHorizontalSize(94), text: "lbl_24_following".tr, margin: getMargin(left: 10), variant: ButtonVariant.OutlineGray100, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.UrbanistSemiBold12Gray200)]))]))])), Padding(padding: getPadding(top: 40), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4), child: Text("lbl_my_work".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold16Gray100)), CustomImageView(svgPath: ImageConstant.imgArrowright1, height: getSize(24), width: getSize(24))])), Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomImageView(imagePath: ImageConstant.imgRectangle2907100x100, height: getSize(100), width: getSize(100), margin: getMargin(right: 7))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgRectangle2908, height: getSize(100), width: getSize(100), margin: getMargin(left: 7, right: 7))), Expanded(child: GestureDetector(onTap: () {onTapColumnplus();}, child: Container(margin: getMargin(left: 7), padding: getPadding(left: 16, top: 28, right: 16, bottom: 28), decoration: AppDecoration.sec, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgPlus24x24, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(top: 6, bottom: 1), child: Text("lbl_submit_a_work".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold10))]))))])), GestureDetector(onTap: () {onTapRowwhislistten();}, child: Padding(padding: getPadding(top: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2, bottom: 1), child: Text("lbl_whislist_10".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold16Gray100)), CustomImageView(svgPath: ImageConstant.imgArrowright2, height: getSize(24), width: getSize(24))]))), Padding(padding: getPadding(top: 16), child: Divider(height: getVerticalSize(2), thickness: getVerticalSize(2), color: ColorConstant.gray600)), GestureDetector(onTap: () {onTapRowsettingaccount();}, child: Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4), child: Text("lbl_setting_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold16Gray100)), CustomImageView(svgPath: ImageConstant.imgArrowright2, height: getSize(24), width: getSize(24))]))), Padding(padding: getPadding(top: 15), child: Divider(height: getVerticalSize(2), thickness: getVerticalSize(2), color: ColorConstant.gray600)), Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4), child: Text("lbl_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold16Gray100)), CustomImageView(svgPath: ImageConstant.imgArrowright2, height: getSize(24), width: getSize(24))])), CustomButton(height: getVerticalSize(52), text: "lbl_logout2".tr, margin: getMargin(top: 65), variant: ButtonVariant.FillDeeporange500, padding: ButtonPadding.PaddingAll15)])))); } 
onTapColumnplus() { Get.toNamed(AppRoutes.submitWorkScreen); } 
onTapRowwhislistten() { Get.toNamed(AppRoutes.whishlistWorksTabContainerScreen); } 
onTapRowsettingaccount() { Get.toNamed(AppRoutes.settingAccountScreen); } 
onTapSettings() { Get.toNamed(AppRoutes.settingScreen); } 
 }
