import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/loans_screen/models/loans_model.dart';/// A controller class for the LoansScreen.
///
/// This class manages the state of the LoansScreen, including the
/// current loansModelObj
class LoansController extends GetxController {Rx<LoansModel> loansModelObj = LoansModel().obs;

 }
