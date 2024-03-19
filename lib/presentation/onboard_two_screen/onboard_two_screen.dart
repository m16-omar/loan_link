import 'controller/onboard_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardTwoScreen extends GetWidget<OnboardTwoController> {
  const OnboardTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 47.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle20050430x390,
                height: 430.v,
                width: 390.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "msg_put_a_smile_on_faces".tr,
                style: CustomTextStyles.titleMediumGray900,
              ),
              SizedBox(height: 19.v),
              Text(
                "msg_support_small_businesses".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 92.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 12.v,
                  margin: EdgeInsets.only(left: 178.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 2,
                    effect: ScrollingDotsEffect(
                      activeDotColor: Color(0X1212121D),
                      dotHeight: 12.v,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 85.v),
              CustomElevatedButton(
                text: "lbl_get_started".tr,
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 18.h,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
