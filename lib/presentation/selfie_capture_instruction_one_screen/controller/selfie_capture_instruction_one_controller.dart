import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_one_screen/models/selfie_capture_instruction_one_model.dart';

/// A controller class for the SelfieCaptureInstructionOneScreen.
///
/// This class manages the state of the SelfieCaptureInstructionOneScreen, including the
/// current selfieCaptureInstructionOneModelObj
class SelfieCaptureInstructionOneController extends GetxController {
  Rx<SelfieCaptureInstructionOneModel> selfieCaptureInstructionOneModelObj =
      SelfieCaptureInstructionOneModel().obs;
}
