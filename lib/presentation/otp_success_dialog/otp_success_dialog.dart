import 'controller/otp_success_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class OtpSuccessDialog extends StatelessWidget {OtpSuccessDialog(this.controller, {Key? key}) : super(key: key);

OtpSuccessController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: 390.h, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 81.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCheck12, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 14.v), Text("lbl_great_job".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 27.v), Container(width: 263.h, margin: EdgeInsets.only(left: 35.h, right: 27.h), child: Text("msg_you_have_successfully4".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLargeBlack900.copyWith(height: 1.50))), SizedBox(height: 27.v), CustomElevatedButton(text: "lbl_proceed".tr, margin: EdgeInsets.only(left: 8.h), onPressed: () {onTapProceed();})])); } 
/// Navigates to the roleSelectionScreen when the action is triggered.
onTapProceed() { Get.toNamed(AppRoutes.roleSelectionScreen, ); } 
 }
