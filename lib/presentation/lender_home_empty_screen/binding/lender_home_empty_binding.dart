import '../controller/lender_home_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LenderHomeEmptyScreen.
///
/// This class ensures that the LenderHomeEmptyController is created when the
/// LenderHomeEmptyScreen is first loaded.
class LenderHomeEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LenderHomeEmptyController());
  }
}
