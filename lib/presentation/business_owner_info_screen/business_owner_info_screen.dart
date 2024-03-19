import 'controller/business_owner_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/core/utils/validation_functions.dart';
import 'package:loan_link/widgets/app_bar/appbar_leading_image.dart';
import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';
import 'package:loan_link/widgets/custom_drop_down.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';
import 'package:loan_link/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BusinessOwnerInfoScreen extends GetWidget<BusinessOwnerInfoController> {
  BusinessOwnerInfoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              height: 47.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primaryContainer)),
                          SizedBox(height: 64.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_set_up_your_profile".tr,
                                      style: theme.textTheme.headlineSmall))),
                          SizedBox(height: 4.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_let_s_get_started".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimary))),
                          SizedBox(height: 33.v),
                          _buildSTEP10F3(),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                      "msg_business_owner_information".tr,
                                      style: CustomTextStyles
                                          .titleMediumMedium18))),
                          SizedBox(height: 26.v),
                          _buildFrame(),
                          SizedBox(height: 23.v),
                          _buildFrame1(),
                          SizedBox(height: 23.v),
                          _buildFrame2(),
                          SizedBox(height: 25.v),
                          _buildFrame3(),
                          SizedBox(height: 25.v),
                          _buildFrame4(),
                          SizedBox(height: 25.v),
                          _buildFrame5()
                        ])))),
            bottomNavigationBar: _buildProceed()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, right: 386.h),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildSTEP10F3() {
    return CustomElevatedButton(
        height: 24.v,
        width: 85.h,
        text: "lbl_step_1_0f_3".tr,
        margin: EdgeInsets.only(left: 20.h),
        buttonStyle: CustomButtonStyles.fillDeepPurple,
        buttonTextStyle: CustomTextStyles.labelLargeBluegray900,
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "msg_enter_first_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_first_name".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          _buildFirstName()
        ]));
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_enter_last_name".tr,
        textInputAction: TextInputAction.done,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          _buildLastName()
        ]));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_gender".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_gender".tr,
              items: controller
                  .businessOwnerInfoModelObj.value.dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_country".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_country".tr,
              items: controller
                  .businessOwnerInfoModelObj.value.dropdownItemList1!.value,
              onChanged: (value) {
                controller.onSelected1(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_how_much_is_your".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "msg_select_income_range".tr,
              items: controller
                  .businessOwnerInfoModelObj.value.dropdownItemList2!.value,
              onChanged: (value) {
                controller.onSelected2(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_how_did_you_hear".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_option".tr,
              items: controller
                  .businessOwnerInfoModelObj.value.dropdownItemList3!.value,
              onChanged: (value) {
                controller.onSelected3(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildProceed() {
    return CustomElevatedButton(
        text: "lbl_proceed".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 53.v),
        onPressed: () {
          onTapProceed();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the businessInfoScreen when the action is triggered.
  onTapProceed() {
    Get.toNamed(
      AppRoutes.businessInfoScreen,
    );
  }
}
