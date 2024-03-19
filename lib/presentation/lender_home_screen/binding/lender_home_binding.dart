import '../controller/lender_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LenderHomeScreen.
///
/// This class ensures that the LenderHomeController is created when the
/// LenderHomeScreen is first loaded.
class LenderHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LenderHomeController());
  }
}
