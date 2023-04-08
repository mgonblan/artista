import '../controller/search_result_artwork_tab_container_controller.dart';
import 'package:get/get.dart';

class SearchResultArtworkTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultArtworkTabContainerController());
  }
}
