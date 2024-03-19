import 'controller/loan_limit_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:loan_link/widgets/app_bar/appbar_trailing_image.dart';
import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class LoanLimitInfoScreen extends GetWidget<LoanLimitInfoController> {
  const LoanLimitInfoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 390.h,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 12.v),
                _buildAppBar(),
                SizedBox(height: 18.v),
                Container(
                  width: 328.h,
                  margin: EdgeInsets.only(
                    left: 23.h,
                    right: 37.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_at".tr,
                          style: CustomTextStyles.bodyMediumOnError_1,
                        ),
                        TextSpan(
                          text: "msg_loanlink_we_want".tr,
                          style:
                              CustomTextStyles.titleSmallOnErrorBold.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 25.v,
      title: AppbarSubtitleOne(
        text: "lbl_loan_limit".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 1.v,
            right: 24.h,
          ),
        ),
      ],
    );
  }
}
