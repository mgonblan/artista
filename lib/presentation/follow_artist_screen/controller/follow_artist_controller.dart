import 'package:artista/core/app_export.dart';import 'package:artista/presentation/follow_artist_screen/models/follow_artist_model.dart';import 'package:flutter/material.dart';class FollowArtistController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<FollowArtistModel> followArtistModelObj = FollowArtistModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
