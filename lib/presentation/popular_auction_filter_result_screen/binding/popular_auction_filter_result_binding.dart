import '../controller/popular_auction_filter_result_controller.dart';
import 'package:get/get.dart';

class PopularAuctionFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularAuctionFilterResultController());
  }
}
