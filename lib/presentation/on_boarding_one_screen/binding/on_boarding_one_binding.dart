import '../controller/on_boarding_one_controller.dart';
import 'package:get/get.dart';

class OnBoardingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingOneController());
  }
}
