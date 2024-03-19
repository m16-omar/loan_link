import '../controller/loan_listings_controller.dart';
import '../models/userprofileview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileviewItemWidget extends StatelessWidget {
  UserprofileviewItemWidget(
    this.userprofileviewItemModelObj, {
    Key? key,
    this.onTapFundButtonText,
  }) : super(
          key: key,
        );

  UserprofileviewItemModel userprofileviewItemModelObj;

  var controller = Get.find<LoanListingsController>();

  VoidCallback? onTapFundButtonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 126.v,
          width: 187.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle20066,
                height: 126.v,
                width: 187.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.center,
              ),
              CustomElevatedButton(
                height: 12.v,
                width: 36.h,
                text: "lbl_ogun".tr,
                margin: EdgeInsets.only(
                  left: 6.h,
                  bottom: 6.v,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsBlueGray9008x8,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                buttonTextStyle: CustomTextStyles.gothicA1Bluegray900,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 67.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Obx(
              () => Text(
                userprofileviewItemModelObj.userTitle!.value,
                style: theme.textTheme.labelSmall,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: 187.h,
          child: Obx(
            () => Text(
              userprofileviewItemModelObj.userDescription!.value,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.43,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.v),
        Obx(
          () => Text(
            userprofileviewItemModelObj.userFundingGoal!.value,
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 12.v),
        CustomElevatedButton(
          height: 48.v,
          width: 187.h,
          text: "lbl_fund".tr,
          onPressed: () {
            onTapFundButtonText!.call();
          },
        ),
      ],
    );
  }
}
