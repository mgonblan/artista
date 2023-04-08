import '../budget_screen/widgets/budget_item_widget.dart';import 'controller/budget_controller.dart';import 'models/budget_item_model.dart';import 'package:artista/core/app_export.dart';import 'package:artista/widgets/custom_button.dart';import 'package:flutter/material.dart';class BudgetScreen extends GetWidget<BudgetController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 68, right: 24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(237), margin: getMargin(right: 89), child: Text("msg_do_you_have_a_b".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold24)), Padding(padding: getPadding(top: 36, right: 2), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(27));}, itemCount: controller.budgetModelObj.value.budgetItemList.length, itemBuilder: (context, index) {BudgetItemModel model = controller.budgetModelObj.value.budgetItemList[index]; return BudgetItemWidget(model);})))])), bottomNavigationBar: CustomButton(height: getVerticalSize(52), text: "lbl_next".tr, margin: getMargin(left: 24, right: 24, bottom: 26), padding: ButtonPadding.PaddingAll15, onTap: onTapNext))); } 
onTapNext() { Get.toNamed(AppRoutes.homeContainerScreen); } 
 }