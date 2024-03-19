import '../controller/loan_limit_info_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanLimitInfoOneScreen.
///
/// This class ensures that the LoanLimitInfoOneController is created when the
/// LoanLimitInfoOneScreen is first loaded.
class LoanLimitInfoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanLimitInfoOneController());
  }
}
