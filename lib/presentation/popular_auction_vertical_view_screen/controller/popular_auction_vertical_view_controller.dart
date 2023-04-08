import 'package:artista/core/app_export.dart';import 'package:artista/presentation/popular_auction_vertical_view_screen/models/popular_auction_vertical_view_model.dart';class PopularAuctionVerticalViewController extends GetxController {Rx<PopularAuctionVerticalViewModel> popularAuctionVerticalViewModelObj = PopularAuctionVerticalViewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
