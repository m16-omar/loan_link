import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/borrower_home_empty_page/models/borrower_home_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the BorrowerHomeEmptyPage.
///
/// This class manages the state of the BorrowerHomeEmptyPage, including the
/// current borrowerHomeEmptyModelObj
class BorrowerHomeEmptyController extends GetxController {BorrowerHomeEmptyController(this.borrowerHomeEmptyModelObj);

TextEditingController iconsController = TextEditingController();

Rx<BorrowerHomeEmptyModel> borrowerHomeEmptyModelObj;

@override void onClose() { super.onClose(); iconsController.dispose(); } 
 }
