import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/business_owner_info_screen/models/business_owner_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the BusinessOwnerInfoScreen.
///
/// This class manages the state of the BusinessOwnerInfoScreen, including the
/// current businessOwnerInfoModelObj
class BusinessOwnerInfoController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

Rx<BusinessOwnerInfoModel> businessOwnerInfoModelObj = BusinessOwnerInfoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); } 
onSelected(dynamic value) { for (var element in businessOwnerInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessOwnerInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in businessOwnerInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessOwnerInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in businessOwnerInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessOwnerInfoModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in businessOwnerInfoModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessOwnerInfoModelObj.value.dropdownItemList3.refresh(); } 
 }
