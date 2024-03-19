import '../controller/loanlinkers_one_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<LoanlinkersOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse110340x40,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 9.v,
            bottom: 12.v,
          ),
          child: Obx(
            () => Text(
              userprofile1ItemModelObj.userName!.value,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Obx(
            () => Text(
              userprofile1ItemModelObj.inviteText!.value,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
        ),
      ],
    );
  }
}
