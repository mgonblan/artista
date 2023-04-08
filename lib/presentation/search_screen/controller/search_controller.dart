import 'package:artista/core/app_export.dart';import 'package:artista/presentation/search_screen/models/search_model.dart';import 'package:flutter/material.dart';class SearchController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<SearchModel> searchModelObj = SearchModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
