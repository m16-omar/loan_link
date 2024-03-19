import '../profile_loan_listings_screen/widgets/userprofile3_item_widget.dart';import 'controller/profile_loan_listings_controller.dart';import 'models/userprofile3_item_model.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/borrower_home_empty_page/borrower_home_empty_page.dart';import 'package:loan_link/presentation/loans_empty_page/loans_empty_page.dart';import 'package:loan_link/widgets/app_bar/appbar_title_button_one.dart';import 'package:loan_link/widgets/app_bar/appbar_trailing_image.dart';import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';import 'package:loan_link/widgets/custom_bottom_bar.dart';class ProfileLoanListingsScreen extends GetWidget<ProfileLoanListingsController> {const ProfileLoanListingsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [Container(height: 47.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.primaryContainer)), SizedBox(height: 74.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_loans_based_on_your".tr, style: CustomTextStyles.titleMediumMedium))), SizedBox(height: 9.v), _buildUserProfile()]))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(title: AppbarTitleButtonOne(margin: EdgeInsets.only(left: 20.h), onTap: () {onTapListings();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconsBlack900, margin: EdgeInsets.symmetric(horizontal: 20.h))]); } 
/// Section Widget
Widget _buildUserProfile() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 299.v, crossAxisCount: 2, mainAxisSpacing: 16.h, crossAxisSpacing: 16.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.profileLoanListingsModelObj.value.userprofile3ItemList.value.length, itemBuilder: (context, index) {Userprofile3ItemModel model = controller.profileLoanListingsModelObj.value.userprofile3ItemList.value[index]; return Userprofile3ItemWidget(model, onTapFundButton: () {onTapFundButton();});}))); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.borrowerHomeEmptyPage; case BottomBarEnum.Loans: return AppRoutes.loansEmptyPage; case BottomBarEnum.Notifications: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.borrowerHomeEmptyPage: return BorrowerHomeEmptyPage(); case AppRoutes.loansEmptyPage: return LoansEmptyPage(); default: return DefaultWidget();} } 
/// Navigates to the loanDetailsScreen when the action is triggered.
onTapFundButton() { Get.toNamed(AppRoutes.loanDetailsScreen); } 
/// Navigates to the loanListingsScreen when the action is triggered.
onTapListings() { Get.toNamed(AppRoutes.loanListingsScreen, ); } 
 }
