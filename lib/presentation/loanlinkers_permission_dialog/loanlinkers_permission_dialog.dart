import 'controller/loanlinkers_permission_controller.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

class LoanlinkersPermissionDialog extends StatelessWidget {
  LoanlinkersPermissionDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanlinkersPermissionController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 270.h,
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          SizedBox(
            width: 199.h,
            child: Text(
              "msg_loanlink_would2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumWorkSans,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 238.h,
            child: Text(
              "msg_we_need_access_to".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumWorkSansBluegray900,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 270.h,
            child: Divider(
              color: appTheme.blueGray700A5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "lbl_cancel".tr,
                  style: CustomTextStyles.bodyLargeWorkSansPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.h),
                child: SizedBox(
                  height: 44.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.blueGray700A5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  top: 10.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "lbl_continue".tr,
                  style: CustomTextStyles.titleMediumWorkSansPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
