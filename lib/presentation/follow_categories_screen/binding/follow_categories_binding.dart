import '../controller/follow_categories_controller.dart';
import 'package:get/get.dart';

class FollowCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowCategoriesController());
  }
}
