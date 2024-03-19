import '../loanlinkers_one_page/widgets/babatunde_item_widget.dart';
import '../loanlinkers_one_page/widgets/userprofile1_item_widget.dart';
import 'controller/loanlinkers_one_controller.dart';
import 'models/babatunde_item_model.dart';
import 'models/loanlinkers_one_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

class LoanlinkersOnePage extends StatelessWidget {
  LoanlinkersOnePage({Key? key})
      : super(
          key: key,
        );

  LoanlinkersOneController controller =
      Get.put(LoanlinkersOneController(LoanlinkersOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildFrame1(),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_a".tr,
                          style: CustomTextStyles.titleSmallGray60001,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildUserProfile(),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_b".tr,
                          style: CustomTextStyles.titleSmallGray60001,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildFrame4(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBluegray100012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.5.v),
                    child: SizedBox(
                      width: 358.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray200,
                      ),
                    ),
                  );
                },
                itemCount: controller.loanlinkersOneModelObj.value
                    .babatundeItemList.value.length,
                itemBuilder: (context, index) {
                  BabatundeItemModel model = controller.loanlinkersOneModelObj
                      .value.babatundeItemList.value[index];
                  return BabatundeItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray100012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 11.0.v),
              child: SizedBox(
                width: 358.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray200,
                ),
              ),
            );
          },
          itemCount: controller
              .loanlinkersOneModelObj.value.userprofile1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model = controller
                .loanlinkersOneModelObj.value.userprofile1ItemList.value[index];
            return Userprofile1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBluegray100012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Container(
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 51.v),
                    child: Divider(
                      color: appTheme.gray200,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse110340x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(bottom: 11.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 11.v,
                    bottom: 21.v,
                  ),
                  child: Text(
                    "lbl_babatunde_ajayi".tr,
                    style: CustomTextStyles.bodyMediumBluegray900,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    bottom: 23.v,
                  ),
                  child: Text(
                    "lbl_invite".tr,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildFrame(
              userName: "lbl_allure_estate".tr,
              userInvite: "lbl_invite".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.gray200,
            endIndent: 8.h,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildFrame(
              userName: "lbl_allure_estate".tr,
              userInvite: "lbl_invite".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String userName,
    required String userInvite,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse110340x40,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          child: Text(
            userName,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Text(
            userInvite,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargePrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
