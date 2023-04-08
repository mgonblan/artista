import '../controller/popular_auction_horizontal_view_controller.dart';
import 'package:get/get.dart';

class PopularAuctionHorizontalViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularAuctionHorizontalViewController());
  }
}
