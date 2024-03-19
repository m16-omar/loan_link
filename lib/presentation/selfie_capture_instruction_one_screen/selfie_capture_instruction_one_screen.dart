import 'controller/selfie_capture_instruction_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/app_bar/appbar_title_button_two.dart';
import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SelfieCaptureInstructionOneScreen
    extends GetWidget<SelfieCaptureInstructionOneController> {
  const SelfieCaptureInstructionOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 94.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse16,
                height: 259.adaptSize,
                width: 259.adaptSize,
                radius: BorderRadius.circular(
                  129.h,
                ),
              ),
              SizedBox(height: 24.v),
              Text(
                "msg_place_your_face".tr,
                style: CustomTextStyles.bodyMediumWorkSansBluegray800,
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100.h),
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.fillGray300.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder30,
                ),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: theme.colorScheme.primaryContainer,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    padding: EdgeInsets.all(16.h),
                    decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCamera01,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                              border: Border.all(
                                color: appTheme.gray300,
                                width: 2.h,
                                strokeAlign: strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "msg_powered_by_hyperverge".tr,
                style: CustomTextStyles.bodySmallWorkSansGray500,
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 111.v,
      title: AppbarTitleButtonTwo(
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }
}
