import 'package:artista/core/app_export.dart';import 'package:artista/presentation/create_password_screen/models/create_password_model.dart';import 'package:flutter/material.dart';class CreatePasswordController extends GetxController {TextEditingController emailaddressController = TextEditingController();

Rx<CreatePasswordModel> createPasswordModelObj = CreatePasswordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailaddressController.dispose(); } 
 }
