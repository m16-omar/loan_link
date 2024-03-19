import '../controller/borrower_notification_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BorrowerNotificationTabContainerScreen.
///
/// This class ensures that the BorrowerNotificationTabContainerController is created when the
/// BorrowerNotificationTabContainerScreen is first loaded.
class BorrowerNotificationTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BorrowerNotificationTabContainerController());
  }
}
