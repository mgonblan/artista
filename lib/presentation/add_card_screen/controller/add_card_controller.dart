import 'package:artista/core/app_export.dart';import 'package:artista/presentation/add_card_screen/models/add_card_model.dart';import 'package:flutter/material.dart';class AddCardController extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController cvcController = TextEditingController();

TextEditingController cvcTwoController = TextEditingController();

Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardnumberController.dispose(); cvcController.dispose(); cvcTwoController.dispose(); } 
 }
