import '../controller/submit_work_controller.dart';
import 'package:get/get.dart';

class SubmitWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubmitWorkController());
  }
}
