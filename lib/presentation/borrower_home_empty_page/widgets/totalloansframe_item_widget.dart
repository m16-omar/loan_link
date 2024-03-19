import '../controller/borrower_home_empty_controller.dart';
import '../models/totalloansframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class TotalloansframeItemWidget extends StatelessWidget {
  TotalloansframeItemWidget(
    this.totalloansframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TotalloansframeItemModel totalloansframeItemModelObj;

  var controller = Get.find<BorrowerHomeEmptyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 104.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              totalloansframeItemModelObj.totalLoans!.value,
              style: CustomTextStyles.labelLargeGray700,
            ),
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              totalloansframeItemModelObj.zero!.value,
              style: CustomTextStyles.titleMediumGray90018,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
