import 'controller/loan_request_2_agreed_controller.dart';
import 'models/loan_request_2_agreed_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/core/utils/validation_functions.dart';
import 'package:loan_link/widgets/custom_text_form_field.dart';

class LoanRequest2AgreedPage extends StatefulWidget {
  LoanRequest2AgreedPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoanRequest2AgreedPage> createState() => _LoanRequest2AgreedPageState();
}

class _LoanRequest2AgreedPageState extends State<LoanRequest2AgreedPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoanRequest2AgreedController controller =
      Get.put(LoanRequest2AgreedController(LoanRequest2AgreedModel().obs));

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
                  hintText: "Enter your email".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(20.h, 30.v, -16.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcons24x24,
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
