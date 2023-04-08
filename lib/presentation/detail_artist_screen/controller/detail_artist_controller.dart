import 'package:artista/core/app_export.dart';import 'package:artista/presentation/detail_artist_screen/models/detail_artist_model.dart';class DetailArtistController extends GetxController {Rx<DetailArtistModel> detailArtistModelObj = DetailArtistModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
