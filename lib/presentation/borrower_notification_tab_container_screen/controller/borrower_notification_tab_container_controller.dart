import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/borrower_notification_tab_container_screen/models/borrower_notification_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BorrowerNotificationTabContainerScreen.
///
/// This class manages the state of the BorrowerNotificationTabContainerScreen, including the
/// current borrowerNotificationTabContainerModelObj
class BorrowerNotificationTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BorrowerNotificationTabContainerModel>
      borrowerNotificationTabContainerModelObj =
      BorrowerNotificationTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
