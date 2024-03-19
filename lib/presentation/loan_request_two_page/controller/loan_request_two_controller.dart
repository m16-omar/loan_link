import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/loan_request_two_page/models/loan_request_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoanRequestTwoPage.
///
/// This class manages the state of the LoanRequestTwoPage, including the
/// current loanRequestTwoModelObj
class LoanRequestTwoController extends GetxController {
  LoanRequestTwoController(this.loanRequestTwoModelObj);

  TextEditingController emailController = TextEditingController();

  Rx<LoanRequestTwoModel> loanRequestTwoModelObj;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
