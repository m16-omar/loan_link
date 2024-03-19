import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/borrower_notification_page/models/borrower_notification_model.dart';/// A controller class for the BorrowerNotificationPage.
///
/// This class manages the state of the BorrowerNotificationPage, including the
/// current borrowerNotificationModelObj
class BorrowerNotificationController extends GetxController {BorrowerNotificationController(this.borrowerNotificationModelObj);

Rx<BorrowerNotificationModel> borrowerNotificationModelObj;

Rx<bool> markAllasRead = false.obs;

 }
