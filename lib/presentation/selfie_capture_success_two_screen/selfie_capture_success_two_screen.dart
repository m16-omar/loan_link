import 'controller/selfie_capture_success_two_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/app_bar/appbar_title_button_two.dart';import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';import 'package:loan_link/widgets/custom_outlined_button.dart';import 'package:loan_link/widgets/custom_radio_button.dart';import 'package:loan_link/presentation/selfie_capture_success_dialog/selfie_capture_success_dialog.dart';import 'package:loan_link/presentation/selfie_capture_success_dialog/controller/selfie_capture_success_controller.dart';class SelfieCaptureSuccessTwoScreen extends GetWidget<SelfieCaptureSuccessTwoController> {const SelfieCaptureSuccessTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 86.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgEllipse16, height: 259.adaptSize, width: 259.adaptSize, radius: BorderRadius.circular(129.h)), SizedBox(height: 16.v), _buildLooksGood(), Spacer(flex: 50), CustomElevatedButton(text: "lbl_proceed".tr, onPressed: () {onTapProceed();}), SizedBox(height: 16.v), CustomOutlinedButton(text: "lbl_retake_selfie".tr, onPressed: () {onTapRetakeSelfie();}), Spacer(flex: 49)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 111.v, title: AppbarTitleButtonTwo(margin: EdgeInsets.only(left: 20.h), onTap: () {onTapSelfieCapture();})); } 
/// Section Widget
Widget _buildLooksGood() { return Align(alignment: Alignment.centerRight, child: Obx(() => Padding(padding: EdgeInsets.only(right: 130.h), child: CustomRadioButton(text: "lbl_looks_good".tr, value: "lbl_looks_good".tr, groupValue: controller.radioGroup.value, onChange: (value) {controller.radioGroup.value = value;})))); } 
/// Navigates to the securityOneScreen when the action is triggered.
onTapSelfieCapture() { Get.toNamed(AppRoutes.securityOneScreen, ); } 

/// Displays a dialog with the [SelfieCaptureSuccessDialog] content.
onTapProceed() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:SelfieCaptureSuccessDialog(Get.put(SelfieCaptureSuccessController(),),),)); } 
/// Navigates to the selfieCaptureInstructionOneScreen when the action is triggered.
onTapRetakeSelfie() { Get.toNamed(AppRoutes.selfieCaptureInstructionOneScreen, ); } 
 }
