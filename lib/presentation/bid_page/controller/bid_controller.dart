import 'package:artista/core/app_export.dart';import 'package:artista/presentation/bid_page/models/bid_model.dart';class BidController extends GetxController {BidController(this.bidModelObj);

Rx<BidModel> bidModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
