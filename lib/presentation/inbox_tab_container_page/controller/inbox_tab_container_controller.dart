import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/inbox_tab_container_page/models/inbox_tab_container_model.dart';
import 'package:flutter/material.dart';

class InboxTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  InboxTabContainerController(this.inboxTabContainerModelObj);

  Rx<InboxTabContainerModel> inboxTabContainerModelObj;

  late TabController frame427320529Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
