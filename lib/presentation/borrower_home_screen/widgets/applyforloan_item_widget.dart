import '../controller/borrower_home_controller.dart';
import '../models/applyforloan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class ApplyforloanItemWidget extends StatelessWidget {
  ApplyforloanItemWidget(
    this.applyforloanItemModelObj, {
    Key? key,
    this.onTapApplyForLoan,
  }) : super(
          key: key,
        );

  ApplyforloanItemModel applyforloanItemModelObj;

  var controller = Get.find<BorrowerHomeController>();

  VoidCallback? onTapApplyForLoan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183.h,
      child: GestureDetector(
        onTap: () {
          onTapApplyForLoan!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineDeeppurple10001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: applyforloanItemModelObj.userImage!.value,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  applyforloanItemModelObj.loanText!.value,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
