import '../../../core/app_export.dart';import 'totalloansframe_item_model.dart';/// This class defines the variables used in the [borrower_home_empty_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BorrowerHomeEmptyModel {Rx<List<TotalloansframeItemModel>> totalloansframeItemList = Rx([TotalloansframeItemModel(totalLoans: "Total Loans".obs,zero: "0".obs),TotalloansframeItemModel(totalLoans: "Total Borrowed(NGN)".obs,zero: "0".obs),TotalloansframeItemModel(totalLoans: "Active Loan".obs,zero: "0".obs)]);

 }
