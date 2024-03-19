import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan limit info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loanLimitInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "onboard One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "onboard Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "log in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "otp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "role selection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.roleSelectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "business owner info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.businessOwnerInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "business info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.businessInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "borrower home(empty) - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.borrowerHomeEmptyContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan request One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loanRequestOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan request Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loanRequestTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "borrower notification - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.borrowerNotificationTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lender personal info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lenderPersonalInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "finance info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.financeInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "personalized goals".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.personalizedGoalsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "security One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lender home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.lenderHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan listings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loanListingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loanDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "borrower home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.borrowerHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loans".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loansScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lender home (empty)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.lenderHomeEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "profile loan listings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileLoanListingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "role selection One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.roleSelectionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "fund borrower".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fundBorrowerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan funded success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loanFundedSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "loan limit info One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loanLimitInfoOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selfie capture instruction".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selfieCaptureInstructionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selfie capture instruction One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selfieCaptureInstructionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selfie capture success Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selfieCaptureSuccessThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selfie capture success Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selfieCaptureSuccessTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
