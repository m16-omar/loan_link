import '../controller/selfie_capture_success_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelfieCaptureSuccessTwoScreen.
///
/// This class ensures that the SelfieCaptureSuccessTwoController is created when the
/// SelfieCaptureSuccessTwoScreen is first loaded.
class SelfieCaptureSuccessTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelfieCaptureSuccessTwoController());
  }
}
