import 'controller/loan_request_two_controller.dart';
import 'models/loan_request_two_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/core/utils/validation_functions.dart';
import 'package:loan_link/widgets/custom_text_form_field.dart';

class LoanRequestTwoPage extends StatelessWidget {
  LoanRequestTwoPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoanRequestTwoController controller =
      Get.put(LoanRequestTwoController(LoanRequestTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                CustomTextFormField(
                  width: double.maxFinite,
                  controller: controller.emailController,
                  hintText: "lbl_enter_email".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(20.h, 30.v, -16.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsGray6000124x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 607.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.only(
                    top: 30.v,
                    right: 28.h,
                    bottom: 30.v,
                  ),
                  borderDecoration:
                      TextFormFieldStyleHelper.underLineOnErrorContainer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
