import '../bidart_event_screen/widgets/bidart_event_item_widget.dart';import 'controller/bidart_event_controller.dart';import 'models/bidart_event_item_model.dart';import 'package:artista/core/app_export.dart';import 'package:artista/widgets/app_bar/appbar_image.dart';import 'package:artista/widgets/app_bar/appbar_subtitle_2.dart';import 'package:artista/widgets/app_bar/custom_app_bar.dart';import 'package:artista/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class BidartEventScreen extends GetWidget<BidartEventController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(40), leadingWidth: 48, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: onTapArrowleft7), centerTitle: true, title: AppbarSubtitle2(text: "lbl_bidart_event".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 14, top: 11, right: 14, bottom: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(focusNode: FocusNode(), controller: controller.fieldController, hintText: "lbl_search_event".tr, margin: getMargin(left: 10, top: 29, right: 10), prefix: Container(margin: getMargin(left: 24, top: 14, right: 12, bottom: 14), child: CustomImageView(svgPath: ImageConstant.imgContrast)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {controller.fieldController.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600)))), Container(width: double.maxFinite, child: Container(margin: getMargin(top: 12), padding: getPadding(left: 10, top: 12, right: 10, bottom: 12), decoration: AppDecoration.fillGray900, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 1), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: controller.bidartEventModelObj.value.bidartEventItemList.length, itemBuilder: (context, index) {BidartEventItemModel model = controller.bidartEventModelObj.value.bidartEventItemList[index]; return BidartEventItemWidget(model, onTapCardevent: onTapCardevent);})))])))])))); } 
onTapCardevent() { Get.toNamed(AppRoutes.detailEventTabContainerScreen); } 
onTapArrowleft7() { Get.back(); } 
 }