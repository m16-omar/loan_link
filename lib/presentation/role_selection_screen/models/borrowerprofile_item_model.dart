import '../../../core/app_export.dart';/// This class is used in the [borrowerprofile_item_widget] screen.
class BorrowerprofileItemModel {BorrowerprofileItemModel({this.borrowerMSMEs, this.requestForLoans, this.id, }) { borrowerMSMEs = borrowerMSMEs  ?? Rx("Borrower (MSMEs)");requestForLoans = requestForLoans  ?? Rx("Request for loans to boost your business goals. \n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)\nBusiness registration documents like CAC");id = id  ?? Rx(""); }

Rx<String>? borrowerMSMEs;

Rx<String>? requestForLoans;

Rx<String>? id;

 }
