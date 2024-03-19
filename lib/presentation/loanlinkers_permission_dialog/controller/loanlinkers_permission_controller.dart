import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/presentation/loanlinkers_permission_dialog/models/loanlinkers_permission_model.dart';

/// A controller class for the LoanlinkersPermissionDialog.
///
/// This class manages the state of the LoanlinkersPermissionDialog, including the
/// current loanlinkersPermissionModelObj
class LoanlinkersPermissionController extends GetxController {
  Rx<LoanlinkersPermissionModel> loanlinkersPermissionModelObj =
      LoanlinkersPermissionModel().obs;
}
