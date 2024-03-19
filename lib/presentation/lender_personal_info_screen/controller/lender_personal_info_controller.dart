import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/lender_personal_info_screen/models/lender_personal_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the LenderPersonalInfoScreen.
///
/// This class manages the state of the LenderPersonalInfoScreen, including the
/// current lenderPersonalInfoModelObj
class LenderPersonalInfoController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

Rx<LenderPersonalInfoModel> lenderPersonalInfoModelObj = LenderPersonalInfoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); } 
onSelected(dynamic value) { for (var element in lenderPersonalInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} lenderPersonalInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in lenderPersonalInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} lenderPersonalInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in lenderPersonalInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} lenderPersonalInfoModelObj.value.dropdownItemList2.refresh(); } 
 }
