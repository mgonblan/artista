import '../controller/popular_auction_vertical_view_controller.dart';
import 'package:get/get.dart';

class PopularAuctionVerticalViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularAuctionVerticalViewController());
  }
}
