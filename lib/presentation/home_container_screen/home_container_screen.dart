import 'controller/home_container_controller.dart';import 'package:artista/core/app_export.dart';import 'package:artista/presentation/discover_photogrophy_tab_container_page/discover_photogrophy_tab_container_page.dart';import 'package:artista/presentation/home_page/home_page.dart';import 'package:artista/presentation/inbox_tab_container_page/inbox_tab_container_page.dart';import 'package:artista/presentation/profile_page/profile_page.dart';import 'package:artista/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class HomeContainerScreen extends GetWidget<HomeContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}))); } 
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Eye24x24: return AppRoutes.discoverPhotogrophyTabContainerPage; case BottomBarEnum.Arrowdown: return AppRoutes.inboxTabContainerPage; case BottomBarEnum.User: return AppRoutes.profilePage; default: return "/";} } 
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.discoverPhotogrophyTabContainerPage: return DiscoverPhotogrophyTabContainerPage(); case AppRoutes.inboxTabContainerPage: return InboxTabContainerPage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }