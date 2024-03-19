import '../controller/onboard_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardOneScreen.
///
/// This class ensures that the OnboardOneController is created when the
/// OnboardOneScreen is first loaded.
class OnboardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardOneController());
  }
}
