import '../controller/loan_request_two_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanRequestTwoTabContainerScreen.
///
/// This class ensures that the LoanRequestTwoTabContainerController is created when the
/// LoanRequestTwoTabContainerScreen is first loaded.
class LoanRequestTwoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanRequestTwoTabContainerController());
  }
}
