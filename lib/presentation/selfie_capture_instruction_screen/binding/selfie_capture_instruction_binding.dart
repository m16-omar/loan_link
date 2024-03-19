import '../controller/selfie_capture_instruction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelfieCaptureInstructionScreen.
///
/// This class ensures that the SelfieCaptureInstructionController is created when the
/// SelfieCaptureInstructionScreen is first loaded.
class SelfieCaptureInstructionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelfieCaptureInstructionController());
  }
}
