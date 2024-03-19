import '../controller/loan_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanDetailsScreen.
///
/// This class ensures that the LoanDetailsController is created when the
/// LoanDetailsScreen is first loaded.
class LoanDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanDetailsController());
  }
}
