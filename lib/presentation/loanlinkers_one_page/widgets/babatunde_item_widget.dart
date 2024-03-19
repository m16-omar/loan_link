import '../controller/loanlinkers_one_controller.dart';
import '../models/babatunde_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

// ignore: must_be_immutable
class BabatundeItemWidget extends StatelessWidget {
  BabatundeItemWidget(
    this.babatundeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BabatundeItemModel babatundeItemModelObj;

  var controller = Get.find<LoanlinkersOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse110340x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(top: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 14.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                babatundeItemModelObj.babatunde!.value,
                style: CustomTextStyles.bodyMediumBluegray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
