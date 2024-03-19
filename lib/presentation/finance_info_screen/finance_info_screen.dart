import 'controller/finance_info_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/core/utils/validation_functions.dart';import 'package:loan_link/widgets/app_bar/appbar_leading_image.dart';import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';import 'package:loan_link/widgets/custom_drop_down.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';import 'package:loan_link/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class FinanceInfoScreen extends GetWidget<FinanceInfoController> {FinanceInfoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SingleChildScrollView(child: Column(children: [Container(height: 47.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.primaryContainer)), SizedBox(height: 61.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_great_job_tell".tr, style: theme.textTheme.headlineSmall))), SizedBox(height: 6.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_let_s_know_about2".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 33.v), _buildSTEP20F4(), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_business_information".tr, style: CustomTextStyles.titleMediumMedium18))), SizedBox(height: 26.v), _buildFrame(), SizedBox(height: 23.v), _buildFrame1(), SizedBox(height: 25.v), _buildFrame2(), SizedBox(height: 25.v), _buildFrame3(), SizedBox(height: 23.v), _buildFrame4(), SizedBox(height: 24.v), _buildFrame5(), SizedBox(height: 24.v), _buildFrame6(), SizedBox(height: 24.v), _buildFrame7(), SizedBox(height: 40.v), _buildProceed(), SizedBox(height: 80.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, right: 386.h), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildSTEP20F4() { return CustomElevatedButton(height: 24.v, width: 85.h, text: "lbl_step_2_0f_4".tr, margin: EdgeInsets.only(left: 20.h), buttonStyle: CustomButtonStyles.fillDeepPurple, buttonTextStyle: CustomTextStyles.labelLargeBluegray900, alignment: Alignment.centerLeft); } 
/// Section Widget
Widget _buildName() { return CustomTextFormField(controller: controller.nameController, hintText: "msg_enter_business_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildFrame() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_business_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), _buildName()])); } 
/// Section Widget
Widget _buildFrame1() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_business_sector".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_select_sector".tr, items: controller.financeInfoModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);})])); } 
/// Section Widget
Widget _buildFrame2() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_business_type".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_select_type".tr, items: controller.financeInfoModelObj.value.dropdownItemList1!.value, onChanged: (value) {controller.onSelected1(value);})])); } 
/// Section Widget
Widget _buildFrame3() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_how_much_is_your".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "msg_select_income_range".tr, items: controller.financeInfoModelObj.value.dropdownItemList2!.value, onChanged: (value) {controller.onSelected2(value);})])); } 
/// Section Widget
Widget _buildWeburl() { return CustomTextFormField(controller: controller.weburlController, hintText: "msg_www_fcmb_ingressive_org".tr); } 
/// Section Widget
Widget _buildFrame4() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_business_website".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), _buildWeburl()])); } 
/// Section Widget
Widget _buildWeburl1() { return CustomTextFormField(controller: controller.weburlController1, hintText: "msg_www_fcmb_ingressive_org".tr); } 
/// Section Widget
Widget _buildFrame5() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_facebook".tr, style: theme.textTheme.titleSmall), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.titleSmallGray600)]), textAlign: TextAlign.left), SizedBox(height: 5.v), _buildWeburl1()])); } 
/// Section Widget
Widget _buildWeburl2() { return CustomTextFormField(controller: controller.weburlController2, hintText: "msg_www_fcmb_ingressive_org".tr); } 
/// Section Widget
Widget _buildFrame6() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_linkedin".tr, style: theme.textTheme.titleSmall), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.titleSmallGray600)]), textAlign: TextAlign.left), SizedBox(height: 5.v), _buildWeburl2()])); } 
/// Section Widget
Widget _buildWeburl3() { return CustomTextFormField(controller: controller.weburlController3, hintText: "msg_www_fcmb_ingressive_org".tr, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildFrame7() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_instagram".tr, style: theme.textTheme.titleSmall), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.titleSmallGray600)]), textAlign: TextAlign.left), SizedBox(height: 5.v), _buildWeburl3()])); } 
/// Section Widget
Widget _buildProceed() { return CustomElevatedButton(text: "lbl_proceed".tr, margin: EdgeInsets.symmetric(horizontal: 20.h), onPressed: () {onTapProceed();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the personalizedGoalsScreen when the action is triggered.
onTapProceed() { Get.toNamed(AppRoutes.personalizedGoalsScreen, ); } 
 }
