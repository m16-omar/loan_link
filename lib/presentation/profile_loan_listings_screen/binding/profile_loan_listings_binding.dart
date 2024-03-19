import '../controller/profile_loan_listings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileLoanListingsScreen.
///
/// This class ensures that the ProfileLoanListingsController is created when the
/// ProfileLoanListingsScreen is first loaded.
class ProfileLoanListingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileLoanListingsController());
  }
}
