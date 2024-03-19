import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/onboard_one_screen/models/onboard_one_model.dart';

/// A controller class for the OnboardOneScreen.
///
/// This class manages the state of the OnboardOneScreen, including the
/// current onboardOneModelObj
class OnboardOneController extends GetxController {
  Rx<OnboardOneModel> onboardOneModelObj = OnboardOneModel().obs;
}
