import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/business_info_screen/models/business_info_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the BusinessInfoScreen.
///
/// This class manages the state of the BusinessInfoScreen, including the
/// current businessInfoModelObj
class BusinessInfoController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController yearOfOperationController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController rcNumberController = TextEditingController();

Rx<BusinessInfoModel> businessInfoModelObj = BusinessInfoModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

@override void onClose() { super.onClose(); nameController.dispose(); yearOfOperationController.dispose(); phoneNumberController.dispose(); addressController.dispose(); rcNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in businessInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in businessInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in businessInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessInfoModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in businessInfoModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} businessInfoModelObj.value.dropdownItemList3.refresh(); } 
 }
