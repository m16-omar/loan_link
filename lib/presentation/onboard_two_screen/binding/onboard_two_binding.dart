import '../controller/onboard_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardTwoScreen.
///
/// This class ensures that the OnboardTwoController is created when the
/// OnboardTwoScreen is first loaded.
class OnboardTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardTwoController());
  }
}
