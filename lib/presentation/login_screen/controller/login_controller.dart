import 'package:artista/core/app_export.dart';import 'package:artista/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';import 'package:artista/data/models/login/post_login_resp.dart';import 'package:artista/data/apiClient/api_client.dart';class LoginController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController inputedController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

PostLoginResp postLoginResp = PostLoginResp();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); inputedController.dispose(); } 
Future<void> callCreateLogin(Map req) async  { try{
postLoginResp   =  await Get.find<ApiClient>().createLogin(headers: {'Content-Type': 'application/json',}, requestData: req);
_handleCreateLoginSuccess();
} on PostLoginResp catch(e)
{
postLoginResp = e;
rethrow;
} } 
void _handleCreateLoginSuccess() { 

Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString()); } 
 }
