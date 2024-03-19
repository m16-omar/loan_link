import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/onboard_two_screen/models/onboard_two_model.dart';

/// A controller class for the OnboardTwoScreen.
///
/// This class manages the state of the OnboardTwoScreen, including the
/// current onboardTwoModelObj
class OnboardTwoController extends GetxController {
  Rx<OnboardTwoModel> onboardTwoModelObj = OnboardTwoModel().obs;
}
