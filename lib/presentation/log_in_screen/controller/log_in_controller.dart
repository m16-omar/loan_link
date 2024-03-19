import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/log_in_screen/models/log_in_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LogInModel> logInModelObj = LogInModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); passwordController.dispose(); } 
 }
