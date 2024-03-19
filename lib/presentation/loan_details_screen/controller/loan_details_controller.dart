import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_details_screen/models/loan_details_model.dart';/// A controller class for the LoanDetailsScreen.
///
/// This class manages the state of the LoanDetailsScreen, including the
/// current loanDetailsModelObj
class LoanDetailsController extends GetxController {Rx<LoanDetailsModel> loanDetailsModelObj = LoanDetailsModel().obs;

 }
