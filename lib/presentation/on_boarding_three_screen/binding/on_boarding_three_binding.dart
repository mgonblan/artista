import '../controller/on_boarding_three_controller.dart';
import 'package:get/get.dart';

class OnBoardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingThreeController());
  }
}
