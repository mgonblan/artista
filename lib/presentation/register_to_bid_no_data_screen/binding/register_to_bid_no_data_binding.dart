import '../controller/register_to_bid_no_data_controller.dart';
import 'package:get/get.dart';

class RegisterToBidNoDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterToBidNoDataController());
  }
}
