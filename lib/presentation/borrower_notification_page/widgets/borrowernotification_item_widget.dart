import '../controller/borrower_notification_controller.dart';
import '../models/borrowernotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BorrowernotificationItemWidget extends StatelessWidget {
  BorrowernotificationItemWidget(
    this.borrowernotificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BorrowernotificationItemModel borrowernotificationItemModelObj;

  var controller = Get.find<BorrowerNotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Obx(
              () => CustomIconButton(
                height: 39.v,
                width: 40.h,
                padding: EdgeInsets.all(9.h),
                child: CustomImageView(
                  imagePath: borrowernotificationItemModelObj.icons!.value,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    borrowernotificationItemModelObj.repaymentSuccessful!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 4.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_you_paid".tr,
                        style: CustomTextStyles.bodySmallGothicA1Gray700,
                      ),
                      TextSpan(
                        text: "msg_n30_000_of_your".tr,
                        style: CustomTextStyles.labelLargeGray700SemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    borrowernotificationItemModelObj.am!.value,
                    style: CustomTextStyles.bodySmallGothicA1Gray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: borrowernotificationItemModelObj.image!.value,
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 25.v),
            ),
          ),
        ],
      ),
    );
  }
}
