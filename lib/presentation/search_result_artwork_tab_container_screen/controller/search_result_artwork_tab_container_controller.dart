import 'package:artista/core/app_export.dart';import 'package:artista/presentation/search_result_artwork_tab_container_screen/models/search_result_artwork_tab_container_model.dart';import 'package:flutter/material.dart';class SearchResultArtworkTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController fieldController = TextEditingController();

Rx<SearchResultArtworkTabContainerModel> searchResultArtworkTabContainerModelObj = SearchResultArtworkTabContainerModel().obs;

late TabController frameController = Get.put(TabController(vsync: this, length: 2));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
