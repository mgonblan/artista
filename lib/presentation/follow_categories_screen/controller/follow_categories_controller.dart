import 'package:artista/core/app_export.dart';import 'package:artista/presentation/follow_categories_screen/models/follow_categories_model.dart';import 'package:flutter/material.dart';class FollowCategoriesController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<FollowCategoriesModel> followCategoriesModelObj = FollowCategoriesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
