import '../controller/borrower_home_empty_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BorrowerHomeEmptyContainerScreen.
///
/// This class ensures that the BorrowerHomeEmptyContainerController is created when the
/// BorrowerHomeEmptyContainerScreen is first loaded.
class BorrowerHomeEmptyContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BorrowerHomeEmptyContainerController());
  }
}
