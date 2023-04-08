import 'package:artista/core/app_export.dart';import 'package:artista/presentation/register_to_bid_no_data_screen/models/register_to_bid_no_data_model.dart';class RegisterToBidNoDataController extends GetxController {Rx<RegisterToBidNoDataModel> registerToBidNoDataModelObj = RegisterToBidNoDataModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
