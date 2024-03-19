import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/loan_limit_info_one_screen/models/loan_limit_info_one_model.dart';

/// A controller class for the LoanLimitInfoOneScreen.
///
/// This class manages the state of the LoanLimitInfoOneScreen, including the
/// current loanLimitInfoOneModelObj
class LoanLimitInfoOneController extends GetxController {
  Rx<LoanLimitInfoOneModel> loanLimitInfoOneModelObj =
      LoanLimitInfoOneModel().obs;
}
