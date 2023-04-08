import 'package:artista/core/app_export.dart';import 'package:artista/presentation/bidart_event_screen/models/bidart_event_model.dart';import 'package:flutter/material.dart';class BidartEventController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<BidartEventModel> bidartEventModelObj = BidartEventModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
