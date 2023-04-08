import 'package:artista/core/app_export.dart';import 'package:artista/presentation/add_address_screen/models/add_address_model.dart';import 'package:flutter/material.dart';class AddAddressController extends GetxController {TextEditingController inputedController = TextEditingController();

TextEditingController inputedOneController = TextEditingController();

TextEditingController inputedTwoController = TextEditingController();

TextEditingController inputedThreeController = TextEditingController();

TextEditingController inputedFourController = TextEditingController();

Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputedController.dispose(); inputedOneController.dispose(); inputedTwoController.dispose(); inputedThreeController.dispose(); inputedFourController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; addAddressModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); addAddressModelObj.value.dropdownItemList.refresh(); } 
 }
