import '../../../core/app_export.dart';import 'lendernotification_item_model.dart';/// This class defines the variables used in the [lender_notification_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LenderNotificationModel {Rx<List<LendernotificationItemModel>> lendernotificationItemList = Rx([LendernotificationItemModel(icons:ImageConstant.imgIconsOnprimarycontainer.obs,loanFundingSuccessful: "Loan Funding Successful".obs,am: "12/09/2023 10:32 A.M".obs,image:ImageConstant.imgGroup7150.obs),LendernotificationItemModel(icons:ImageConstant.imgIconsOnprimarycontainer.obs,loanFundingSuccessful: "Loan Funding Successful".obs,am: "12/09/2023 10:32 A.M".obs,image:ImageConstant.imgGroup7150.obs)]);

 }
