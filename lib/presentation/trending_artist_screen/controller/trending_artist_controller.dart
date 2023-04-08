import 'package:artista/core/app_export.dart';import 'package:artista/presentation/trending_artist_screen/models/trending_artist_model.dart';import 'package:flutter/material.dart';class TrendingArtistController extends GetxController {TextEditingController fieldController = TextEditingController();

Rx<TrendingArtistModel> trendingArtistModelObj = TrendingArtistModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fieldController.dispose(); } 
 }
