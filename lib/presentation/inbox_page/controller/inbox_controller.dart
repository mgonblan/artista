import 'package:artista/core/app_export.dart';import 'package:artista/presentation/inbox_page/models/inbox_model.dart';class InboxController extends GetxController {InboxController(this.inboxModelObj);

Rx<InboxModel> inboxModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
