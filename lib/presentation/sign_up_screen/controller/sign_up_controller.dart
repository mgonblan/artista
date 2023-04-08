import 'package:artista/core/app_export.dart';import 'package:artista/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';import 'package:artista/data/models/register/post_register_resp.dart';import 'package:artista/data/apiClient/api_client.dart';class SignUpController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController inputedController = TextEditingController();

TextEditingController inputedOneController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

PostRegisterResp postRegisterResp = PostRegisterResp();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); inputedController.dispose(); inputedOneController.dispose(); } 
Future<void> callCreateRegister(Map req) async  { try{
postRegisterResp   =  await Get.find<ApiClient>().createRegister(headers: {'Content-Type': 'application/json',}, requestData: req);
_handleCreateRegisterSuccess();
} on PostRegisterResp catch(e)
{
postRegisterResp = e;
rethrow;
} } 
void _handleCreateRegisterSuccess() { 

 } 
 }
