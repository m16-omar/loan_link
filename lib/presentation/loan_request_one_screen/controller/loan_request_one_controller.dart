import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_request_one_screen/models/loan_request_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoanRequestOneScreen.
///
/// This class manages the state of the LoanRequestOneScreen, including the
/// current loanRequestOneModelObj
class LoanRequestOneController extends GetxController {TextEditingController amountController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController selectDayController = TextEditingController();

Rx<LoanRequestOneModel> loanRequestOneModelObj = LoanRequestOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); amountController.dispose(); phoneNumberController.dispose(); selectDayController.dispose(); } 
onSelected(dynamic value) { for (var element in loanRequestOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} loanRequestOneModelObj.value.dropdownItemList.refresh(); } 
 }
