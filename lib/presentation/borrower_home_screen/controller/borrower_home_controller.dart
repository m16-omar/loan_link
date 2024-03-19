import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/borrower_home_screen/models/borrower_home_model.dart';/// A controller class for the BorrowerHomeScreen.
///
/// This class manages the state of the BorrowerHomeScreen, including the
/// current borrowerHomeModelObj
class BorrowerHomeController extends GetxController {Rx<BorrowerHomeModel> borrowerHomeModelObj = BorrowerHomeModel().obs;

 }
