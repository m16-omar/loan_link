import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/profile_loan_listings_screen/models/profile_loan_listings_model.dart';/// A controller class for the ProfileLoanListingsScreen.
///
/// This class manages the state of the ProfileLoanListingsScreen, including the
/// current profileLoanListingsModelObj
class ProfileLoanListingsController extends GetxController {Rx<ProfileLoanListingsModel> profileLoanListingsModelObj = ProfileLoanListingsModel().obs;

 }
