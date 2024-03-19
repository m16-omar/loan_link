import 'controller/borrower_home_empty_container_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/borrower_home_empty_page/borrower_home_empty_page.dart';import 'package:loan_link/presentation/loans_empty_page/loans_empty_page.dart';import 'package:loan_link/widgets/custom_bottom_bar.dart';class BorrowerHomeEmptyContainerScreen extends GetWidget<BorrowerHomeEmptyContainerController> {const BorrowerHomeEmptyContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.borrowerHomeEmptyPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.borrowerHomeEmptyPage; case BottomBarEnum.Loans: return AppRoutes.loansEmptyPage; case BottomBarEnum.Notifications: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.borrowerHomeEmptyPage: return BorrowerHomeEmptyPage(); case AppRoutes.loansEmptyPage: return LoansEmptyPage(); default: return DefaultWidget();} } 
 }
