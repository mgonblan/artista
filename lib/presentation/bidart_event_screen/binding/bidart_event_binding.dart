import '../controller/bidart_event_controller.dart';
import 'package:get/get.dart';

class BidartEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BidartEventController());
  }
}
