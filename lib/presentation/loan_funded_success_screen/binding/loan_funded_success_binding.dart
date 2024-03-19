import '../controller/loan_funded_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanFundedSuccessScreen.
///
/// This class ensures that the LoanFundedSuccessController is created when the
/// LoanFundedSuccessScreen is first loaded.
class LoanFundedSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanFundedSuccessController());
  }
}
