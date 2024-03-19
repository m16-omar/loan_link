import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/selfie_capture_success_three_screen/models/selfie_capture_success_three_model.dart';/// A controller class for the SelfieCaptureSuccessThreeScreen.
///
/// This class manages the state of the SelfieCaptureSuccessThreeScreen, including the
/// current selfieCaptureSuccessThreeModelObj
class SelfieCaptureSuccessThreeController extends GetxController {Rx<SelfieCaptureSuccessThreeModel> selfieCaptureSuccessThreeModelObj = SelfieCaptureSuccessThreeModel().obs;

Rx<String> radioGroup = "".obs;

 }
