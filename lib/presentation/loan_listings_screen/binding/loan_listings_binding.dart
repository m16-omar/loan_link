import '../controller/loan_listings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoanListingsScreen.
///
/// This class ensures that the LoanListingsController is created when the
/// LoanListingsScreen is first loaded.
class LoanListingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoanListingsController());
  }
}
