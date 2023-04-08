import '../controller/search_event_controller.dart';
import 'package:get/get.dart';

class SearchEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEventController());
  }
}
