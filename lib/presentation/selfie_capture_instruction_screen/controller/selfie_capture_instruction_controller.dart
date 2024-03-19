import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_screen/models/selfie_capture_instruction_model.dart';

/// A controller class for the SelfieCaptureInstructionScreen.
///
/// This class manages the state of the SelfieCaptureInstructionScreen, including the
/// current selfieCaptureInstructionModelObj
class SelfieCaptureInstructionController extends GetxController {
  Rx<SelfieCaptureInstructionModel> selfieCaptureInstructionModelObj =
      SelfieCaptureInstructionModel().obs;
}
