import 'controller/loanlinkers_controller.dart';import 'models/loanlinkers_model.dart';import 'package:flutter/material.dart';import 'package:loan_link/core/app_export.dart';import 'package:loan_link/widgets/custom_elevated_button.dart';import 'package:loan_link/presentation/loanlinkers_permission_dialog/loanlinkers_permission_dialog.dart';import 'package:loan_link/presentation/loanlinkers_permission_dialog/controller/loanlinkers_permission_controller.dart';
// ignore_for_file: must_be_immutable
class LoanlinkersPage extends StatelessWidget {LoanlinkersPage({Key? key}) : super(key: key);

LoanlinkersController controller = Get.put(LoanlinkersController(LoanlinkersModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [SizedBox(height: 125.v), _buildAddContacts()])))); } 
/// Section Widget
Widget _buildAddContacts() { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgGroupBlueGray900, height: 70.v, width: 144.h), SizedBox(height: 24.v), Text("msg_no_contact_saved".tr, style: theme.textTheme.titleSmall), SizedBox(height: 35.v), CustomElevatedButton(text: "lbl_add_contacts".tr, onPressed: () {onTapAddContacts();})])); } 

/// Displays a dialog with the [LoanlinkersPermissionDialog] content.
onTapAddContacts() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:LoanlinkersPermissionDialog(Get.put(LoanlinkersPermissionController(),),),)); } 
 }
