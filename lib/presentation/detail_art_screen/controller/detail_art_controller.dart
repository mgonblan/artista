import 'package:artista/core/app_export.dart';import 'package:artista/presentation/detail_art_screen/models/detail_art_model.dart';class DetailArtController extends GetxController {Rx<DetailArtModel> detailArtModelObj = DetailArtModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
