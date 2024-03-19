import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/loan_request_2_agreed_page/models/loan_request_2_agreed_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoanRequest2AgreedPage.
///
/// This class manages the state of the LoanRequest2AgreedPage, including the
/// current loanRequest2AgreedModelObj
class LoanRequest2AgreedController extends GetxController {
  LoanRequest2AgreedController(this.loanRequest2AgreedModelObj);

  TextEditingController emailController = TextEditingController();

  Rx<LoanRequest2AgreedModel> loanRequest2AgreedModelObj;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
