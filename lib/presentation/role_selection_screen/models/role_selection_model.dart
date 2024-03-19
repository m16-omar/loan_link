import '../../../core/app_export.dart';import 'borrowerprofile_item_model.dart';/// This class defines the variables used in the [role_selection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RoleSelectionModel {Rx<List<BorrowerprofileItemModel>> borrowerprofileItemList = Rx([BorrowerprofileItemModel(borrowerMSMEs: "Borrower (MSMEs)".obs,requestForLoans: "Request for loans to boost your business goals. \n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)\nBusiness registration documents like CAC".obs),BorrowerprofileItemModel(borrowerMSMEs: "Lender (Investor)".obs,requestForLoans: "Support a small business owner and earn profits\n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)".obs)]);

 }
