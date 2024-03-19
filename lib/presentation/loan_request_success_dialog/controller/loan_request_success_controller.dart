import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_request_success_dialog/models/loan_request_success_model.dart';/// A controller class for the LoanRequestSuccessDialog.
///
/// This class manages the state of the LoanRequestSuccessDialog, including the
/// current loanRequestSuccessModelObj
class LoanRequestSuccessController extends GetxController {Rx<LoanRequestSuccessModel> loanRequestSuccessModelObj = LoanRequestSuccessModel().obs;

 }
