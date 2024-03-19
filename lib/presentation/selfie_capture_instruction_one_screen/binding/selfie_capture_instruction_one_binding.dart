import '../controller/selfie_capture_instruction_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelfieCaptureInstructionOneScreen.
///
/// This class ensures that the SelfieCaptureInstructionOneController is created when the
/// SelfieCaptureInstructionOneScreen is first loaded.
class SelfieCaptureInstructionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelfieCaptureInstructionOneController());
  }
}
