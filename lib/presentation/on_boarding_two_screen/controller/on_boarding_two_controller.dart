import 'package:artista/core/app_export.dart';import 'package:artista/presentation/on_boarding_two_screen/models/on_boarding_two_model.dart';class OnBoardingTwoController extends GetxController {Rx<OnBoardingTwoModel> onBoardingTwoModelObj = OnBoardingTwoModel().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
