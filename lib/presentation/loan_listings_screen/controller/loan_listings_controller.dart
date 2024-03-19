import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loan_listings_screen/models/loan_listings_model.dart';/// A controller class for the LoanListingsScreen.
///
/// This class manages the state of the LoanListingsScreen, including the
/// current loanListingsModelObj
class LoanListingsController extends GetxController {Rx<LoanListingsModel> loanListingsModelObj = LoanListingsModel().obs;

 }
