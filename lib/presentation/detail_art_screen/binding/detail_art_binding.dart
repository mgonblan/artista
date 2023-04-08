import '../controller/detail_art_controller.dart';
import 'package:get/get.dart';

class DetailArtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailArtController());
  }
}
