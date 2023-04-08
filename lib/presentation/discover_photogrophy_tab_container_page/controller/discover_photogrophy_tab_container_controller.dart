import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/discover_photogrophy_tab_container_page/models/discover_photogrophy_tab_container_model.dart';
import 'package:flutter/material.dart';

class DiscoverPhotogrophyTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  DiscoverPhotogrophyTabContainerController(
      this.discoverPhotogrophyTabContainerModelObj);

  TextEditingController fieldController = TextEditingController();

  Rx<DiscoverPhotogrophyTabContainerModel>
      discoverPhotogrophyTabContainerModelObj;

  late TabController groupController =
      Get.put(TabController(vsync: this, length: 4));

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fieldController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    discoverPhotogrophyTabContainerModelObj.value.dropdownItemList
        .forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    discoverPhotogrophyTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
