import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/selfie_capture_success_two_screen/models/selfie_capture_success_two_model.dart';/// A controller class for the SelfieCaptureSuccessTwoScreen.
///
/// This class manages the state of the SelfieCaptureSuccessTwoScreen, including the
/// current selfieCaptureSuccessTwoModelObj
class SelfieCaptureSuccessTwoController extends GetxController {Rx<SelfieCaptureSuccessTwoModel> selfieCaptureSuccessTwoModelObj = SelfieCaptureSuccessTwoModel().obs;

Rx<String> radioGroup = "".obs;

 }
