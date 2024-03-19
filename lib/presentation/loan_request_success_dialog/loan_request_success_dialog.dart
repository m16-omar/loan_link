import 'controller/loan_request_success_controller.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class LoanRequestSuccessDialog extends StatelessWidget {LoanRequestSuccessDialog(this.controller, {Key? key}) : super(key: key);

LoanRequestSuccessController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: 390.h, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 81.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCheck12, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 8.v), Text("msg_loan_request_successful".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 21.v), Container(width: 256.h, margin: EdgeInsets.only(left: 38.h, right: 31.h), child: Text("msg_we_will_get_back".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumOnError.copyWith(height: 1.43))), SizedBox(height: 19.v), CustomElevatedButton(text: "lbl_proceed".tr, margin: EdgeInsets.only(left: 8.h), onPressed: () {onTapProceed();}), SizedBox(height: 16.v)])); } 
/// Navigates to the borrowerHomeScreen when the action is triggered.
onTapProceed() { Get.toNamed(AppRoutes.borrowerHomeScreen, ); } 
 }
