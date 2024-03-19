import '../../../core/app_export.dart';import 'borrowernotification_item_model.dart';/// This class defines the variables used in the [borrower_notification_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BorrowerNotificationModel {Rx<List<BorrowernotificationItemModel>> borrowernotificationItemList = Rx([BorrowernotificationItemModel(icons:ImageConstant.imgIconsGreenA700.obs,repaymentSuccessful: "Repayment Successful".obs,am: "12/09/2023 10:32 A.M".obs,image:ImageConstant.imgGroup7150.obs),BorrowernotificationItemModel(icons:ImageConstant.imgIconsOnprimarycontainer.obs,repaymentSuccessful: "Loan Funding Successful".obs,am: "12/09/2023 10:32 A.M".obs,image:ImageConstant.imgGroup7150.obs)]);

 }
