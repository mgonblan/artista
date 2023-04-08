import '../controller/setting_account_controller.dart';
import 'package:get/get.dart';

class SettingAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingAccountController());
  }
}
