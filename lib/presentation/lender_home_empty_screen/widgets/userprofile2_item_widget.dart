import '../controller/lender_home_empty_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
    this.onTapUserFundButton,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<LenderHomeEmptyController>();

  VoidCallback? onTapUserFundButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 187.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 2.v,
          bottom: 17.v,
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
                      imagePath: userprofile2ItemModelObj.userImage!.value,
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
                              imagePath: userprofile2ItemModelObj.ogun!.value,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Obx(
                              () => Text(
                                userprofile2ItemModelObj.userName!.value,
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
                  userprofile2ItemModelObj.userDescription!.value,
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
                  userprofile2ItemModelObj.userFundingGoal!.value,
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
                onTapUserFundButton!.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
