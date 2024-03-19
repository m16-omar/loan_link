import '../../../core/app_export.dart';import 'borrowermsmes_item_model.dart';/// This class defines the variables used in the [role_selection_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RoleSelectionOneModel {Rx<List<BorrowermsmesItemModel>> borrowermsmesItemList = Rx([BorrowermsmesItemModel(borrowerText: "Borrower (MSMEs)".obs,requestText: "Request for loans to boost your business goals. \n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)\nBusiness registration documents like CAC".obs),BorrowermsmesItemModel(borrowerText: "Lender (Investor)".obs,requestText: "Support a small business owner and earn profits\n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)".obs)]);

 }
