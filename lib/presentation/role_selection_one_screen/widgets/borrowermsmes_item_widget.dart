import '../controller/role_selection_one_controller.dart';
import '../models/borrowermsmes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class BorrowermsmesItemWidget extends StatelessWidget {
  BorrowermsmesItemWidget(
    this.borrowermsmesItemModelObj, {
    Key? key,
    this.onTapBorrowerMSMEs,
  }) : super(
          key: key,
        );

  BorrowermsmesItemModel borrowermsmesItemModelObj;

  var controller = Get.find<RoleSelectionOneController>();

  VoidCallback? onTapBorrowerMSMEs;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBorrowerMSMEs!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.primary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle20061,
              height: 124.v,
              width: 358.h,
              radius: BorderRadius.circular(
                4.h,
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Obx(
                () => Text(
                  borrowermsmesItemModelObj.borrowerText!.value,
                  style:
                      CustomTextStyles.titleMediumHankenGroteskPrimaryContainer,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Container(
              width: 294.h,
              margin: EdgeInsets.only(
                left: 1.h,
                right: 61.h,
              ),
              child: Obx(
                () => Text(
                  borrowermsmesItemModelObj.requestText!.value,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles
                      .bodyMediumHankenGroteskPrimaryContainer
                      .copyWith(
                    height: 1.45,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.v),
          ],
        ),
      ),
    );
  }
}
