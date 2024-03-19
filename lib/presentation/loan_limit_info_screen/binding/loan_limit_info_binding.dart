import '../controller/loan_limit_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanLimitInfoScreen.
///
/// This class ensures that the LoanLimitInfoController is created when the
/// LoanLimitInfoScreen is first loaded.
class LoanLimitInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanLimitInfoController());
  }
}
