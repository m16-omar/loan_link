import 'controller/sign_up_controller.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/core/utils/validation_functions.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';import 'package:loan_link/widgets/custom_phone_number.dart';import 'package:loan_link/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {SignUpScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 47.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.primaryContainer)), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_create_account".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_provide_your_details".tr, style: CustomTextStyles.bodyMediumOnPrimary)), SizedBox(height: 64.v), _buildFrame(), SizedBox(height: 23.v), _buildFrame1(), SizedBox(height: 23.v), _buildFrame2(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIconsGray6000116x16, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_minimum_of_8_characters".tr, style: CustomTextStyles.bodyMediumBluegray900))])), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIconsGray6000116x16, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_must_have_a_capital".tr, style: CustomTextStyles.bodyMediumBluegray900))])), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIconsGray6000116x16, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_must_have_a_special".tr, style: CustomTextStyles.bodyMediumBluegray900))])), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIconsGray6000116x16, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_must_have_a_number".tr, style: CustomTextStyles.bodyMediumBluegray900))])), SizedBox(height: 42.v), _buildCreateAccount(), SizedBox(height: 14.v), Align(alignment: Alignment.center, child: Container(width: 355.h, margin: EdgeInsets.symmetric(horizontal: 37.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_by_clicking_create2".tr, style: CustomTextStyles.bodyMediumGray800), TextSpan(text: "lbl_terms".tr, style: CustomTextStyles.bodyMediumPrimary), TextSpan(text: "lbl".tr, style: CustomTextStyles.bodyMediumGray800), TextSpan(text: "lbl_privacy_policy".tr, style: CustomTextStyles.bodyMediumPrimary)]), textAlign: TextAlign.center))), SizedBox(height: 44.v), GestureDetector(onTap: () {onTapTxtHavealoanlink();}, child: Padding(padding: EdgeInsets.only(left: 23.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_have_a_loanlink2".tr, style: CustomTextStyles.bodyLargeGray800_1), TextSpan(text: "lbl2".tr, style: CustomTextStyles.bodyLargeGray800_1), TextSpan(text: "lbl_log_in2".tr, style: CustomTextStyles.titleMediumPrimary)]), textAlign: TextAlign.left))), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "msg_johndoe_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}); } 
/// Section Widget
Widget _buildFrame() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_email_address".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), _buildEmail()]))); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country country) {controller.selectedCountry.value = country;})); } 
/// Section Widget
Widget _buildFrame1() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), _buildPhoneNumber()]))); } 
/// Section Widget
Widget _buildPassword() { return Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_enter_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray60001, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 15.v))); } 
/// Section Widget
Widget _buildFrame2() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), _buildPassword()]))); } 
/// Section Widget
Widget _buildCreateAccount() { return CustomElevatedButton(text: "lbl_create_account".tr, margin: EdgeInsets.symmetric(horizontal: 20.h), onPressed: () {onTapCreateAccount();}, alignment: Alignment.center); } 
/// Navigates to the otpScreen when the action is triggered.
onTapCreateAccount() { Get.toNamed(AppRoutes.otpScreen, ); } 
/// Navigates to the logInScreen when the action is triggered.
onTapTxtHavealoanlink() { Get.toNamed(AppRoutes.logInScreen, ); } 
 }