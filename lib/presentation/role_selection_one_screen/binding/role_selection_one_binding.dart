import '../controller/role_selection_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RoleSelectionOneScreen.
///
/// This class ensures that the RoleSelectionOneController is created when the
/// RoleSelectionOneScreen is first loaded.
class RoleSelectionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoleSelectionOneController());
  }
}
