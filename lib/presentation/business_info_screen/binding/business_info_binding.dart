import '../controller/business_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusinessInfoScreen.
///
/// This class ensures that the BusinessInfoController is created when the
/// BusinessInfoScreen is first loaded.
class BusinessInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusinessInfoController());
  }
}
