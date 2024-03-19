import '../borrower_notification_page/widgets/borrowernotification_item_widget.dart';
import 'controller/borrower_notification_controller.dart';
import 'models/borrower_notification_model.dart';
import 'models/borrowernotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_checkbox_button.dart';
import 'package:loan_link/widgets/custom_icon_button.dart';

class BorrowerNotificationPage extends StatefulWidget {
  BorrowerNotificationPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<BorrowerNotificationPage> createState() =>
      _BorrowerNotificationPageState();
}

class _BorrowerNotificationPageState extends State<BorrowerNotificationPage> {
  BorrowerNotificationController controller =
      Get.put(BorrowerNotificationController(BorrowerNotificationModel().obs));

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
                    _buildBorrowernotification(),
                    SizedBox(height: 16.v),
                    Text(
                      "lbl_last_week".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 28.v),
                    Container(
                      margin: EdgeInsets.only(left: 8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.v,
                              bottom: 9.v,
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
                                  "msg_repayment_successful".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 4.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_you_paid".tr,
                                        style: CustomTextStyles
                                            .bodySmallGothicA1Gray700,
                                      ),
                                      TextSpan(
                                        text: "msg_n30_000_of_your".tr,
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
  Widget _buildBorrowernotification() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 33.v,
          );
        },
        itemCount: controller.borrowerNotificationModelObj.value
            .borrowernotificationItemList.value.length,
        itemBuilder: (context, index) {
          BorrowernotificationItemModel model = controller
              .borrowerNotificationModelObj
              .value
              .borrowernotificationItemList
              .value[index];
          return BorrowernotificationItemWidget(
            model,
          );
        },
      ),
    );
  }
}
