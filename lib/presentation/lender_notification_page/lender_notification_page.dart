import '../lender_notification_page/widgets/lendernotification_item_widget.dart';
import 'controller/lender_notification_controller.dart';
import 'models/lender_notification_model.dart';
import 'models/lendernotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_checkbox_button.dart';
import 'package:loan_link/widgets/custom_icon_button.dart';

class LenderNotificationPage extends StatelessWidget {
  LenderNotificationPage({Key? key})
      : super(
          key: key,
        );

  LenderNotificationController controller =
      Get.put(LenderNotificationController(LenderNotificationModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMarkAllasRead(),
                    SizedBox(height: 18.v),
                    Text(
                      "lbl_today".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 9.v),
                    _buildLenderNotification(),
                    SizedBox(height: 16.v),
                    Text(
                      "lbl_last_week".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 26.v),
                    Container(
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 95.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 11.v,
                              bottom: 10.v,
                            ),
                            child: CustomIconButton(
                              height: 39.v,
                              width: 40.h,
                              padding: EdgeInsets.all(9.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIconsGreenA700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_withdrawal_successful".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 5.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_you_withdrew".tr,
                                        style: CustomTextStyles
                                            .bodySmallGothicA1Gray700,
                                      ),
                                      TextSpan(
                                        text: "msg_n210_000_from_your".tr,
                                        style: CustomTextStyles
                                            .labelLargeGray700SemiBold,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "msg_12_09_2023_10_32".tr,
                                  style:
                                      CustomTextStyles.bodySmallGothicA1Gray500,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMarkAllasRead() {
    return Obx(
      () => CustomCheckboxButton(
        text: "msg_mark_all_as_read".tr,
        value: controller.markAllasRead.value,
        padding: EdgeInsets.symmetric(vertical: 4.v),
        onChange: (value) {
          controller.markAllasRead.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLenderNotification() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 31.v,
          );
        },
        itemCount: controller.lenderNotificationModelObj.value
            .lendernotificationItemList.value.length,
        itemBuilder: (context, index) {
          LendernotificationItemModel model = controller
              .lenderNotificationModelObj
              .value
              .lendernotificationItemList
              .value[index];
          return LendernotificationItemWidget(
            model,
          );
        },
      ),
    );
  }
}
