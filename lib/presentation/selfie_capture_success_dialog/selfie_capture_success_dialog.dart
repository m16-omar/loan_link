import 'controller/selfie_capture_success_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class SelfieCaptureSuccessDialog extends StatelessWidget {SelfieCaptureSuccessDialog(this.controller, {Key? key}) : super(key: key);

SelfieCaptureSuccessController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: 390.h, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 81.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCheck12, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 14.v), Text("msg_profile_creation".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 31.v), Container(width: 291.h, margin: EdgeInsets.only(left: 21.h, right: 13.h), child: Text("msg_we_will_review_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumOnError.copyWith(height: 1.43))), SizedBox(height: 27.v), CustomElevatedButton(text: "lbl_proceed".tr, margin: EdgeInsets.only(left: 8.h), onPressed: () {onTapProceed();})])); } 
/// Navigates to the lenderHomeEmptyScreen when the action is triggered.
onTapProceed() { Get.toNamed(AppRoutes.lenderHomeEmptyScreen, ); } 
 }
