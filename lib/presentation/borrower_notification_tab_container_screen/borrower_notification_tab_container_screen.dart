import 'controller/borrower_notification_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/borrower_home_empty_page/borrower_home_empty_page.dart';
import 'package:loan_link/presentation/lender_notification_page/lender_notification_page.dart';
import 'package:loan_link/presentation/loans_empty_page/loans_empty_page.dart';
import 'package:loan_link/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:loan_link/widgets/app_bar/appbar_trailing_image.dart';
import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';
import 'package:loan_link/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class BorrowerNotificationTabContainerScreen
    extends GetWidget<BorrowerNotificationTabContainerController> {
  const BorrowerNotificationTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
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
              SizedBox(height: 72.v),
              _buildTabview(),
              SizedBox(
                height: 651.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    LenderNotificationPage(),
                    LenderNotificationPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 94.v,
      title: AppbarSubtitleOne(
        text: "lbl_notifications".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconsBlack900,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 1.v,
            right: 20.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 73.v,
      width: 390.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(
          2.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Gothic A1',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Gothic A1',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          10.5.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            4.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.gray200.withOpacity(0.8),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                2,
                3,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_unread".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.borrowerHomeEmptyPage;
      case BottomBarEnum.Loans:
        return AppRoutes.loansEmptyPage;
      case BottomBarEnum.Notifications:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.borrowerHomeEmptyPage:
        return BorrowerHomeEmptyPage();
      case AppRoutes.loansEmptyPage:
        return LoansEmptyPage();
      default:
        return DefaultWidget();
    }
  }
}
