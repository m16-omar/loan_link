import '../controller/loans_empty_controller.dart';
import '../models/loandetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class LoandetailsItemWidget extends StatelessWidget {
  LoandetailsItemWidget(
    this.loandetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoandetailsItemModel loandetailsItemModelObj;

  var controller = Get.find<LoansEmptyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray40001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.loanRequested!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.loanAmount!.value,
                        style: CustomTextStyles.titleSmallGray60001,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          loandetailsItemModelObj.appliedDate!.value,
                          style: CustomTextStyles.bodySmallGothicA1Gray60001,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.disbursedDate!.value,
                        style: CustomTextStyles.bodySmallGothicA1Gray60001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.totalAmount!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.totalAmountValue!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 26,
              ),
              SizedBox(
                height: 48.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
              Spacer(
                flex: 30,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.interest!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.interestValue!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 20,
              ),
              SizedBox(
                height: 48.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
              Spacer(
                flex: 22,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.tenor!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        loandetailsItemModelObj.tenorValue!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
