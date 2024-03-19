import '../controller/lender_personal_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LenderPersonalInfoScreen.
///
/// This class ensures that the LenderPersonalInfoController is created when the
/// LenderPersonalInfoScreen is first loaded.
class LenderPersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LenderPersonalInfoController());
  }
}
