import '../controller/loan_request_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanRequestOneScreen.
///
/// This class ensures that the LoanRequestOneController is created when the
/// LoanRequestOneScreen is first loaded.
class LoanRequestOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanRequestOneController());
  }
}
