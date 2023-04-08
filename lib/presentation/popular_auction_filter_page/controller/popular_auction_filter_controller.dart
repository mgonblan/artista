import 'package:artista/core/app_export.dart';import 'package:artista/presentation/popular_auction_filter_page/models/popular_auction_filter_model.dart';class PopularAuctionFilterController extends GetxController {PopularAuctionFilterController(this.popularAuctionFilterModelObj);

Rx<PopularAuctionFilterModel> popularAuctionFilterModelObj;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
