import '../controller/role_selection_controller.dart';
import '../models/borrowerprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class BorrowerprofileItemWidget extends StatelessWidget {
  BorrowerprofileItemWidget(
    this.borrowerprofileItemModelObj, {
    Key? key,
    this.onTapBorrowerProfile,
  }) : super(
          key: key,
        );

  BorrowerprofileItemModel borrowerprofileItemModelObj;

  var controller = Get.find<RoleSelectionController>();

  VoidCallback? onTapBorrowerProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBorrowerProfile!.call();
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
                  borrowerprofileItemModelObj.borrowerMSMEs!.value,
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
                  borrowerprofileItemModelObj.requestForLoans!.value,
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
