import 'package:artista/core/app_export.dart';import 'package:artista/presentation/budget_screen/models/budget_model.dart';class BudgetController extends GetxController {Rx<BudgetModel> budgetModelObj = BudgetModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
