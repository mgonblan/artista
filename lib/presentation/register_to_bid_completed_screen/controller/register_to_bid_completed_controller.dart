import 'package:artista/core/app_export.dart';import 'package:artista/presentation/register_to_bid_completed_screen/models/register_to_bid_completed_model.dart';class RegisterToBidCompletedController extends GetxController {Rx<RegisterToBidCompletedModel> registerToBidCompletedModelObj = RegisterToBidCompletedModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
