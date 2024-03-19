import '../../../core/app_export.dart';import 'totalloansframe1_item_model.dart';import 'applyforloan_item_model.dart';/// This class defines the variables used in the [borrower_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BorrowerHomeModel {Rx<List<Totalloansframe1ItemModel>> totalloansframe1ItemList = Rx([Totalloansframe1ItemModel(totalLoans: "Total Loans".obs,numberOfLoans: "3".obs),Totalloansframe1ItemModel(totalLoans: "Total Borrowed(NGN)".obs,numberOfLoans: "200,000".obs),Totalloansframe1ItemModel(totalLoans: "Active Loan".obs,numberOfLoans: "1".obs)]);

Rx<List<ApplyforloanItemModel>> applyforloanItemList = Rx([ApplyforloanItemModel(userImage:ImageConstant.imgIconsPrimary32x32.obs,loanText: "Apply for Loan".obs),ApplyforloanItemModel(userImage:ImageConstant.imgIcons.obs,loanText: "Make Repayment".obs)]);

 }
