import '../controller/selfie_capture_success_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelfieCaptureSuccessThreeScreen.
///
/// This class ensures that the SelfieCaptureSuccessThreeController is created when the
/// SelfieCaptureSuccessThreeScreen is first loaded.
class SelfieCaptureSuccessThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelfieCaptureSuccessThreeController());
  }
}
