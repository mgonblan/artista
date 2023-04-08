import '../controller/budget_controller.dart';
import 'package:get/get.dart';

class BudgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BudgetController());
  }
}
