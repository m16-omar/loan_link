import '../controller/loan_listings_controller.dart';
import '../models/ogun_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';
import 'package:loan_link/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OgunItemWidget extends StatelessWidget {
  OgunItemWidget(
    this.ogunItemModelObj, {
    Key? key,
    this.onTapFund,
  }) : super(
          key: key,
        );

  OgunItemModel ogunItemModelObj;

  var controller = Get.find<LoanListingsController>();

  VoidCallback? onTapFund;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 126.v,
          width: 187.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: ogunItemModelObj.image!.value,
                  height: 126.v,
                  width: 187.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              CustomElevatedButton(
                height: 12.v,
                width: 36.h,
                text: "lbl_ogun".tr,
                margin: EdgeInsets.only(
                  left: 6.h,
                  bottom: 6.v,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsBlueGray9008x8,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                buttonTextStyle: CustomTextStyles.gothicA1Bluegray900,
                alignment: Alignment.bottomLeft,
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
              ogunItemModelObj.helpTysonGetA!.value,
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
              ogunItemModelObj.price!.value,
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
            onTapFund!.call();
          },
        ),
      ],
    );
  }
}
