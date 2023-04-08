import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/popular_auction_filter_tab_container_screen/models/popular_auction_filter_tab_container_model.dart';
import 'package:flutter/material.dart';

class PopularAuctionFilterTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<PopularAuctionFilterTabContainerModel>
      popularAuctionFilterTabContainerModelObj =
      PopularAuctionFilterTabContainerModel().obs;

  late TabController frame427320527Controller =
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
