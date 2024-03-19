import '../controller/fund_borrower_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FundBorrowerScreen.
///
/// This class ensures that the FundBorrowerController is created when the
/// FundBorrowerScreen is first loaded.
class FundBorrowerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FundBorrowerController());
  }
}
