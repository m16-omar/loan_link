import '../controller/business_owner_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusinessOwnerInfoScreen.
///
/// This class ensures that the BusinessOwnerInfoController is created when the
/// BusinessOwnerInfoScreen is first loaded.
class BusinessOwnerInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusinessOwnerInfoController());
  }
}
