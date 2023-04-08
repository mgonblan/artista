import '../controller/follow_artist_controller.dart';
import 'package:get/get.dart';

class FollowArtistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowArtistController());
  }
}
