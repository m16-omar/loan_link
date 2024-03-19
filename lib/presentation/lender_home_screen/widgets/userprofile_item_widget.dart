import '../controller/lender_home_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapFundButton,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<LenderHomeController>();

  VoidCallback? onTapFundButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 187.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          bottom: 16.v,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 126.v,
              width: 187.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: userprofileItemModelObj.userImage!.value,
                      height: 126.v,
                      width: 187.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(6.h, 108.v, 145.h, 6.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: userprofileItemModelObj.ogun!.value,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Obx(
                              () => Text(
                                userprofileItemModelObj.userName!.value,
                                style: CustomTextStyles.gothicA1Bluegray900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            CustomElevatedButton(
              height: 20.v,
              width: 70.h,
              text: "lbl_engineering".tr,
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: theme.textTheme.labelSmall!,
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 7.v),
            SizedBox(
              width: 187.h,
              child: Obx(
                () => Text(
                  userprofileItemModelObj.helpText!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Obx(
                () => Text(
                  userprofileItemModelObj.amount!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 13.v),
            CustomElevatedButton(
              height: 48.v,
              width: 187.h,
              text: "lbl_fund".tr,
              onPressed: () {
                onTapFundButton!.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
