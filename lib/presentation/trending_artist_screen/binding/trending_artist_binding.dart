import '../controller/trending_artist_controller.dart';
import 'package:get/get.dart';

class TrendingArtistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingArtistController());
  }
}
