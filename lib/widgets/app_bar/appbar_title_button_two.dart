import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButtonTwo extends StatelessWidget {
  AppbarTitleButtonTwo({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 24.v,
          width: 163.h,
          text: "lbl_selfie_capture".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: CustomTextStyles.titleMediumMedium18,
        ),
      ),
    );
  }
}
