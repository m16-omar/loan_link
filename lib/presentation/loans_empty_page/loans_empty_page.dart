import '../loans_empty_page/widgets/loandetails_item_widget.dart';import 'controller/loans_empty_controller.dart';import 'models/loandetails_item_model.dart';import 'models/loans_empty_model.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/app_bar/appbar_leading_image.dart';import 'package:loan_link/widgets/app_bar/appbar_subtitle_one.dart';import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class LoansEmptyPage extends StatelessWidget {LoansEmptyPage({Key? key}) : super(key: key);

LoansEmptyController controller = Get.put(LoansEmptyController(LoansEmptyModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [Container(height: 47.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.primaryContainer)), SizedBox(height: 98.v), Container(height: 96.adaptSize, width: 96.adaptSize, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 21.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder48), child: CustomImageView(imagePath: ImageConstant.imgGroup21, height: 52.v, width: 49.h, alignment: Alignment.center)), SizedBox(height: 16.v), Text("msg_no_loan_request".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 33.v), CustomElevatedButton(width: 138.h, text: "lbl_apply_for_loan2".tr, onPressed: () {onTapApplyForLoan();}), SizedBox(height: 44.v), _buildLoanHistory(), SizedBox(height: 8.v), _buildLoanDetails()]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 94.v, leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 1.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleOne(text: "lbl_loans".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildLoanHistory() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_loan_history".tr, style: CustomTextStyles.titleMediumMedium18), CustomImageView(imagePath: ImageConstant.imgIconsBlack900, height: 24.adaptSize, width: 24.adaptSize)])); } 
/// Section Widget
Widget _buildLoanDetails() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.0.v), child: SizedBox(width: 390.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray10001)));}, itemCount: controller.loansEmptyModelObj.value.loandetailsItemList.value.length, itemBuilder: (context, index) {LoandetailsItemModel model = controller.loansEmptyModelObj.value.loandetailsItemList.value[index]; return LoandetailsItemWidget(model);}))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the loanRequestOneScreen when the action is triggered.
onTapApplyForLoan() { Get.toNamed(AppRoutes.loanRequestOneScreen, ); } 
 }
