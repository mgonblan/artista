import 'package:artista/core/app_export.dart';import 'package:artista/presentation/whishlist_works_tab_container_screen/models/whishlist_works_tab_container_model.dart';import 'package:flutter/material.dart';class WhishlistWorksTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<WhishlistWorksTabContainerModel> whishlistWorksTabContainerModelObj = WhishlistWorksTabContainerModel().obs;

late TabController frame427320530Controller = Get.put(TabController(vsync: this, length: 2));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
