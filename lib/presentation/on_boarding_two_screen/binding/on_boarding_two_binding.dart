import '../controller/on_boarding_two_controller.dart';
import 'package:get/get.dart';

class OnBoardingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingTwoController());
  }
}
