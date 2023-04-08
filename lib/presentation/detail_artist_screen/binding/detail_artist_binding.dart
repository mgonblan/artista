import '../controller/detail_artist_controller.dart';
import 'package:get/get.dart';

class DetailArtistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailArtistController());
  }
}
