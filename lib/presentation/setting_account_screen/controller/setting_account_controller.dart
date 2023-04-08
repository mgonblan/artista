import 'package:artista/core/app_export.dart';import 'package:artista/presentation/setting_account_screen/models/setting_account_model.dart';import 'package:flutter/material.dart';import 'package:artista/data/models/me/get_me_resp.dart';import 'package:artista/data/apiClient/api_client.dart';import 'package:fluttertoast/fluttertoast.dart';class SettingAccountController extends GetxController {TextEditingController inputedController = TextEditingController();

TextEditingController inputedOneController = TextEditingController();

TextEditingController emailOneController = TextEditingController();

Rx<SettingAccountModel> settingAccountModelObj = SettingAccountModel().obs;

GetMeResp getMeResp = GetMeResp();

@override Future<void> onReady() async  { super.onReady();try {
await this.callFetchMe();_onFetchMeSuccess();} on GetMeResp {_onFetchMeError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} }
@override void onClose() { super.onClose(); inputedController.dispose(); inputedOneController.dispose(); emailOneController.dispose(); }
Future<void> callFetchMe() async  { try{
getMeResp   =  await Get.find<ApiClient>().fetchMe(headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',});
_handleFetchMeSuccess();
} on GetMeResp catch(e)
{
getMeResp = e;
rethrow;
} }
void _handleFetchMeSuccess() {

inputedOneController.text = getMeResp.data!.username!.toString();emailOneController.text = getMeResp.data!.email!.toString();inputedController.text = getMeResp.data!.name!.toString(); }
void _onFetchMeSuccess() {  }
void _onFetchMeError() {

Fluttertoast.showToast(msg: getMeResp.message!.toString(),); }
 }
