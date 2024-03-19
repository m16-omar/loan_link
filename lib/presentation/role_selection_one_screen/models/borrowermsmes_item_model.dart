import '../../../core/app_export.dart';/// This class is used in the [borrowermsmes_item_widget] screen.
class BorrowermsmesItemModel {BorrowermsmesItemModel({this.borrowerText, this.requestText, this.id, }) { borrowerText = borrowerText  ?? Rx("Borrower (MSMEs)");requestText = requestText  ?? Rx("Request for loans to boost your business goals. \n\nFor a successful application, you’ll need:\nMeans of Identification\nBank Verification Number (BVN)\nBusiness registration documents like CAC");id = id  ?? Rx(""); }

Rx<String>? borrowerText;

Rx<String>? requestText;

Rx<String>? id;

 }
