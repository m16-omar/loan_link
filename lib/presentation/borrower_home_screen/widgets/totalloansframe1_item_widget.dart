import '../controller/borrower_home_controller.dart';
import '../models/totalloansframe1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class Totalloansframe1ItemWidget extends StatelessWidget {
  Totalloansframe1ItemWidget(
    this.totalloansframe1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Totalloansframe1ItemModel totalloansframe1ItemModelObj;

  var controller = Get.find<BorrowerHomeController>();

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
              totalloansframe1ItemModelObj.totalLoans!.value,
              style: CustomTextStyles.labelLargeGray700,
            ),
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              totalloansframe1ItemModelObj.numberOfLoans!.value,
              style: CustomTextStyles.titleMediumGray90018,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
