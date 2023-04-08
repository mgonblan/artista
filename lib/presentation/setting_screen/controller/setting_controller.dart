import 'package:artista/core/app_export.dart';import 'package:artista/presentation/setting_screen/models/setting_model.dart';class SettingController extends GetxController {Rx<SettingModel> settingModelObj = SettingModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
