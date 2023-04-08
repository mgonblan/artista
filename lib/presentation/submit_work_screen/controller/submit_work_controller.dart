import 'package:artista/core/app_export.dart';import 'package:artista/presentation/submit_work_screen/models/submit_work_model.dart';import 'package:flutter/material.dart';class SubmitWorkController extends GetxController {TextEditingController inputedController = TextEditingController();

TextEditingController inputedThreeController = TextEditingController();

TextEditingController inputedFourController = TextEditingController();

TextEditingController inputedFiveController = TextEditingController();

Rx<SubmitWorkModel> submitWorkModelObj = SubmitWorkModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

RxBool isSelectedSwitch2 = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputedController.dispose(); inputedThreeController.dispose(); inputedFourController.dispose(); inputedFiveController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; submitWorkModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); submitWorkModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; submitWorkModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); submitWorkModelObj.value.dropdownItemList1.refresh(); } 
 }
