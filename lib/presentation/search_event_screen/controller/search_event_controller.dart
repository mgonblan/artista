import 'package:artista/core/app_export.dart';import 'package:artista/presentation/search_event_screen/models/search_event_model.dart';import 'package:flutter/material.dart';class SearchEventController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<SearchEventModel> searchEventModelObj = SearchEventModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
