import '../controller/lender_notification_controller.dart';
import '../models/lendernotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LendernotificationItemWidget extends StatelessWidget {
  LendernotificationItemWidget(
    this.lendernotificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LendernotificationItemModel lendernotificationItemModelObj;

  var controller = Get.find<LenderNotificationController>();

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
                decoration: IconButtonStyleHelper.fillRed,
                child: CustomImageView(
                  imagePath: lendernotificationItemModelObj.icons!.value,
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
                    lendernotificationItemModelObj.loanFundingSuccessful!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 3.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_you_have_successfully2".tr,
                        style: CustomTextStyles.bodySmallGothicA1Gray700,
                      ),
                      TextSpan(
                        text: "msg_n50_000_to_tyson".tr,
                        style: CustomTextStyles.labelLargeGray700SemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    lendernotificationItemModelObj.am!.value,
                    style: CustomTextStyles.bodySmallGothicA1Gray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: lendernotificationItemModelObj.image!.value,
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
