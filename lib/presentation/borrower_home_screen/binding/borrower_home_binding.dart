import '../controller/borrower_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BorrowerHomeScreen.
///
/// This class ensures that the BorrowerHomeController is created when the
/// BorrowerHomeScreen is first loaded.
class BorrowerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BorrowerHomeController());
  }
}
