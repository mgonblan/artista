import '../controller/detail_event_tab_container_controller.dart';
import 'package:get/get.dart';

class DetailEventTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailEventTabContainerController());
  }
}
