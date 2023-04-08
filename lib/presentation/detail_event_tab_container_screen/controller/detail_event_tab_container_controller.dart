import 'package:artista/core/app_export.dart';import 'package:artista/presentation/detail_event_tab_container_screen/models/detail_event_tab_container_model.dart';import 'package:flutter/material.dart';class DetailEventTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<DetailEventTabContainerModel> detailEventTabContainerModelObj = DetailEventTabContainerModel().obs;

late TabController frame427320528Controller = Get.put(TabController(vsync: this, length: 2));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
