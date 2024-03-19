import 'controller/loan_request_two_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_request_2_agreed_page/loan_request_2_agreed_page.dart';import 'package:loan_link/presentation/loanlinkers_one_page/loanlinkers_one_page.dart';import 'package:loan_link/widgets/app_bar/appbar_title_button.dart';import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';class LoanRequestTwoTabContainerScreen extends GetWidget<LoanRequestTwoTabContainerController> {const LoanRequestTwoTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 47.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.primaryContainer)), SizedBox(height: 72.v), CustomElevatedButton(height: 24.v, width: 85.h, text: "lbl_step_2_0f_2".tr, margin: EdgeInsets.only(left: 20.h), buttonStyle: CustomButtonStyles.fillDeepPurple, buttonTextStyle: CustomTextStyles.labelLargeBluegray900), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_reference_information".tr, style: CustomTextStyles.titleMediumMedium18)), SizedBox(height: 15.v), Align(alignment: Alignment.center, child: Container(width: 382.h, margin: EdgeInsets.only(left: 20.h, right: 28.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_please_provide_22".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "msg_must_be_people_you".tr, style: CustomTextStyles.titleMediumGray700Bold)]), textAlign: TextAlign.left))), SizedBox(height: 23.v), _buildTabview(), SizedBox(height: 681.v, child: TabBarView(controller: controller.tabviewController, children: [LoanRequest2AgreedPage(), LoanlinkersOnePage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(title: AppbarTitleButton(margin: EdgeInsets.only(left: 20.h), onTap: () {onTapRequestLoan();})); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 73.v, width: 390.h, decoration: BoxDecoration(color: appTheme.gray50, borderRadius: BorderRadius.circular(2.h)), child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Gothic A1', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.blueGray900, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Gothic A1', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(10.5.h), indicator: BoxDecoration(color: theme.colorScheme.primaryContainer, borderRadius: BorderRadius.circular(4.h), boxShadow: [BoxShadow(color: appTheme.gray200.withOpacity(0.8), spreadRadius: 2.h, blurRadius: 2.h, offset: Offset(2, 3))]), tabs: [Tab(child: Text("lbl_referees".tr)), Tab(child: Text("lbl_loanlinkers".tr))])); } 
/// Navigates to the loanRequestOneScreen when the action is triggered.
onTapRequestLoan() { Get.toNamed(AppRoutes.loanRequestOneScreen, ); } 
 }