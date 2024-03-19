import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/lender_notification_page/models/lender_notification_model.dart';/// A controller class for the LenderNotificationPage.
///
/// This class manages the state of the LenderNotificationPage, including the
/// current lenderNotificationModelObj
class LenderNotificationController extends GetxController {LenderNotificationController(this.lenderNotificationModelObj);

Rx<LenderNotificationModel> lenderNotificationModelObj;

Rx<bool> markAllasRead = false.obs;

 }
