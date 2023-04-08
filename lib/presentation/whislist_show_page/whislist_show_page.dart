import '../whislist_show_page/widgets/listrectangle2912_item_widget.dart';import 'controller/whislist_show_controller.dart';import 'models/listrectangle2912_item_model.dart';import 'models/whislist_show_model.dart';import 'package:artista/core/app_export.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class WhislistShowPage extends StatelessWidget {WhislistShowController controller = Get.put(WhislistShowController(WhislistShowModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(left: 14, top: 27, right: 14), padding: getPadding(left: 10, top: 12, right: 10, bottom: 12), decoration: AppDecoration.fillGray900, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 1), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: controller.whislistShowModelObj.value.listrectangle2912ItemList.length, itemBuilder: (context, index) {Listrectangle2912ItemModel model = controller.whislistShowModelObj.value.listrectangle2912ItemList[index]; return Listrectangle2912ItemWidget(model, onTapCardevent: onTapCardevent);})))]))])))); } 
onTapCardevent() { Get.toNamed(AppRoutes.detailEventTabContainerScreen); } 
 }
