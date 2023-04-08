import '../controller/register_to_bid_completed_controller.dart';
import 'package:get/get.dart';

class RegisterToBidCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterToBidCompletedController());
  }
}
