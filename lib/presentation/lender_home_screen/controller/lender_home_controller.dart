import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/lender_home_screen/models/lender_home_model.dart';/// A controller class for the LenderHomeScreen.
///
/// This class manages the state of the LenderHomeScreen, including the
/// current lenderHomeModelObj
class LenderHomeController extends GetxController {Rx<LenderHomeModel> lenderHomeModelObj = LenderHomeModel().obs;

 }
