import '../controller/loans_controller.dart';
import '../models/loandetails1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class Loandetails1ItemWidget extends StatelessWidget {
  Loandetails1ItemWidget(
    this.loandetails1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Loandetails1ItemModel loandetails1ItemModelObj;

  var controller = Get.find<LoansController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray40001,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 137.v,
        width: 390.h,
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.outlineGray40001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 390.h,
                child: Divider(),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                                  loandetails1ItemModelObj.loanRequested!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Obx(
                                () => Text(
                                  loandetails1ItemModelObj.loanAmount!.value,
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
                                    loandetails1ItemModelObj.appliedDate!.value,
                                    style: CustomTextStyles
                                        .bodySmallGothicA1Gray60001,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => Text(
                                  loandetails1ItemModelObj.disbursedDate!.value,
                                  style: CustomTextStyles
                                      .bodySmallGothicA1Gray60001,
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
                                  loandetails1ItemModelObj.totalAmount!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Obx(
                                () => Text(
                                  loandetails1ItemModelObj
                                      .totalAmountValue!.value,
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
                                  loandetails1ItemModelObj.interest!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => Text(
                                  loandetails1ItemModelObj.interestValue!.value,
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
                                  loandetails1ItemModelObj.tenor!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => Text(
                                  loandetails1ItemModelObj.tenorValue!.value,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
