import '../controller/lender_home_controller.dart';
import '../models/loanlink_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class LoanlinkItemWidget extends StatelessWidget {
  LoanlinkItemWidget(
    this.loanlinkItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanlinkItemModel loanlinkItemModelObj;

  var controller = Get.find<LenderHomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: loanlinkItemModelObj.image!.value,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 7.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  loanlinkItemModelObj.loanLink!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 123.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Obx(
                        () => Text(
                          loanlinkItemModelObj.date!.value,
                          style: CustomTextStyles.bodySmallGothicA1,
                        ),
                      ),
                    ),
                    Obx(
                      () => Text(
                        loanlinkItemModelObj.time!.value,
                        style: CustomTextStyles.bodySmallGothicA1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Obx(
            () => Text(
              loanlinkItemModelObj.fortyThousand!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
