import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/camera_permission_dialog/models/camera_permission_model.dart';/// A controller class for the CameraPermissionDialog.
///
/// This class manages the state of the CameraPermissionDialog, including the
/// current cameraPermissionModelObj
class CameraPermissionController extends GetxController {Rx<CameraPermissionModel> cameraPermissionModelObj = CameraPermissionModel().obs;

 }
