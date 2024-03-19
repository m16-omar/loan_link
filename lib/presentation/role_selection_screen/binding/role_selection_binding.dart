import '../controller/role_selection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RoleSelectionScreen.
///
/// This class ensures that the RoleSelectionController is created when the
/// RoleSelectionScreen is first loaded.
class RoleSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoleSelectionController());
  }
}
