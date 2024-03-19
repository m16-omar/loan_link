import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/loan_limit_info_screen/models/loan_limit_info_model.dart';

/// A controller class for the LoanLimitInfoScreen.
///
/// This class manages the state of the LoanLimitInfoScreen, including the
/// current loanLimitInfoModelObj
class LoanLimitInfoController extends GetxController {
  Rx<LoanLimitInfoModel> loanLimitInfoModelObj = LoanLimitInfoModel().obs;
}
