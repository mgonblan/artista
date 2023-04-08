import 'package:artista/core/app_export.dart';import 'package:artista/presentation/popular_auction_horizontal_view_screen/models/popular_auction_horizontal_view_model.dart';class PopularAuctionHorizontalViewController extends GetxController {Rx<PopularAuctionHorizontalViewModel> popularAuctionHorizontalViewModelObj = PopularAuctionHorizontalViewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
