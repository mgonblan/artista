import '../controller/popular_auction_filter_tab_container_controller.dart';
import 'package:get/get.dart';

class PopularAuctionFilterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularAuctionFilterTabContainerController());
  }
}
