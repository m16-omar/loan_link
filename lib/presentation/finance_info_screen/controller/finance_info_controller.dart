import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/finance_info_screen/models/finance_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the FinanceInfoScreen.
///
/// This class manages the state of the FinanceInfoScreen, including the
/// current financeInfoModelObj
class FinanceInfoController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController weburlController = TextEditingController();

TextEditingController weburlController1 = TextEditingController();

TextEditingController weburlController2 = TextEditingController();

TextEditingController weburlController3 = TextEditingController();

Rx<FinanceInfoModel> financeInfoModelObj = FinanceInfoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); nameController.dispose(); weburlController.dispose(); weburlController1.dispose(); weburlController2.dispose(); weburlController3.dispose(); } 
onSelected(dynamic value) { for (var element in financeInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} financeInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in financeInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} financeInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in financeInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} financeInfoModelObj.value.dropdownItemList2.refresh(); } 
 }
