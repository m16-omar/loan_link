import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_request_two_tab_container_screen/models/loan_request_two_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoanRequestTwoTabContainerScreen.
///
/// This class manages the state of the LoanRequestTwoTabContainerScreen, including the
/// current loanRequestTwoTabContainerModelObj
class LoanRequestTwoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<LoanRequestTwoTabContainerModel> loanRequestTwoTabContainerModelObj = LoanRequestTwoTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
