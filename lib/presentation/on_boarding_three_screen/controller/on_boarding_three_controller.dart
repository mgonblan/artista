import 'package:artista/core/app_export.dart';import 'package:artista/presentation/on_boarding_three_screen/models/on_boarding_three_model.dart';class OnBoardingThreeController extends GetxController {Rx<OnBoardingThreeModel> onBoardingThreeModelObj = OnBoardingThreeModel().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
