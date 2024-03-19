import 'controller/business_info_controller.dart' show BusinessInfoController;
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/core/utils/validation_functions.dart';
import 'package:loan_link/widgets/app_bar/appbar_leading_image.dart';
import 'package:loan_link/widgets/app_bar/custom_app_bar.dart';
import 'package:loan_link/widgets/custom_drop_down.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';
import 'package:loan_link/widgets/custom_phone_number.dart';
import 'package:loan_link/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BusinessInfoScreen extends GetWidget<BusinessInfoController> {
  BusinessInfoScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 61.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_great_job_tell".tr,
                                      style: theme.textTheme.headlineSmall))),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_let_s_know_about".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimary))),
                          SizedBox(height: 33.v),
                          _buildSTEP20F3(),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_business_information".tr,
                                      style: CustomTextStyles
                                          .titleMediumMedium18))),
                          SizedBox(height: 27.v),
                          _buildFrame(),
                          SizedBox(height: 25.v),
                          _buildFrame1(),
                          SizedBox(height: 23.v),
                          _buildFrame2(),
                          SizedBox(height: 25.v),
                          _buildFrame3(),
                          SizedBox(height: 23.v),
                          _buildFrame4(),
                          SizedBox(height: 23.v),
                          _buildFrame5(),
                          SizedBox(height: 23.v),
                          _buildFrame6(),
                          SizedBox(height: 23.v),
                          _buildFrame7()
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
  Widget _buildSTEP20F3() {
    return CustomElevatedButton(
        height: 24.v,
        width: 85.h,
        text: "lbl_step_2_0f_3".tr,
        margin: EdgeInsets.only(left: 20.h),
        buttonStyle: CustomButtonStyles.fillDeepPurple,
        buttonTextStyle: CustomTextStyles.labelLargeBluegray900,
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "msg_enter_business_name".tr,
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
          Text("msg_legal_business_name".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          _buildName()
        ]));
  }

  /// Section Widget
  Widget _buildYearOfOperation() {
    return CustomTextFormField(
        controller: controller.yearOfOperationController,
        hintText: "lbl_enter_year".tr);
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_year_of_operation".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          _buildYearOfOperation()
        ]));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_business_sector".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_sector".tr,
              items:
                  controller.businessInfoModelObj.value.dropdownItemList!.value,
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
          Text("lbl_business_type".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 4.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_type".tr,
              items: controller
                  .businessInfoModelObj.value.dropdownItemList1!.value,
              onChanged: (value) {
                controller.onSelected1(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Obx(() => CustomPhoneNumber(
        country: controller.selectedCountry.value,
        controller: controller.phoneNumberController,
        onTap: (Country country) {
          controller.selectedCountry.value = country;
        }));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_business_phone_number".tr,
              style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          _buildPhoneNumber()
        ]));
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
        controller: controller.addressController,
        hintText: "msg_enter_business_address".tr);
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_business_address".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          _buildAddress()
        ]));
  }

  /// Section Widget
  Widget _buildFrame6() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_state".tr, style: theme.textTheme.titleSmall),
                        SizedBox(height: 6.v),
                        CustomDropDown(
                            width: 183.h,
                            icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            hintText: "lbl_select_state".tr,
                            items: controller.businessInfoModelObj.value
                                .dropdownItemList2!.value,
                            onChanged: (value) {
                              controller.onSelected2(value);
                            })
                      ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_city".tr, style: theme.textTheme.titleSmall),
                        SizedBox(height: 4.v),
                        CustomDropDown(
                            width: 183.h,
                            icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            hintText: "lbl_select_city".tr,
                            items: controller.businessInfoModelObj.value
                                .dropdownItemList3!.value,
                            onChanged: (value) {
                              controller.onSelected3(value);
                            })
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildRcNumber() {
    return CustomTextFormField(
        controller: controller.rcNumberController,
        hintText: "lbl_enter_rc_number".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildFrame7() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_rc_number".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          _buildRcNumber()
        ]));
  }

  /// Section Widget
  Widget _buildProceed() {
    return CustomElevatedButton(
        text: "lbl_proceed".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 46.v),
        onPressed: () {
          onTapProceed();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapProceed() {
    Get.toNamed(
      AppRoutes.securityScreen,
    );
  }
}
