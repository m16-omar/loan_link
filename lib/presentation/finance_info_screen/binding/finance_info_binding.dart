import '../controller/finance_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FinanceInfoScreen.
///
/// This class ensures that the FinanceInfoController is created when the
/// FinanceInfoScreen is first loaded.
class FinanceInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FinanceInfoController());
  }
}
