import '../../../core/app_export.dart';/// This class is used in the [loandetails_item_widget] screen.
class LoandetailsItemModel {LoandetailsItemModel({this.loanRequested, this.loanAmount, this.appliedDate, this.disbursedDate, this.totalAmount, this.totalAmountValue, this.interest, this.interestValue, this.tenor, this.tenorValue, this.id, }) { loanRequested = loanRequested  ?? Rx("Loan Requested:");loanAmount = loanAmount  ?? Rx("NGN75,000");appliedDate = appliedDate  ?? Rx("Applied: 10/10/2023");disbursedDate = disbursedDate  ?? Rx("Disbursed: 15/10/2023");totalAmount = totalAmount  ?? Rx("Total Amount");totalAmountValue = totalAmountValue  ?? Rx("NGN80,000");interest = interest  ?? Rx("Interest");interestValue = interestValue  ?? Rx("2%");tenor = tenor  ?? Rx("Tenor");tenorValue = tenorValue  ?? Rx("3 months");id = id  ?? Rx(""); }

Rx<String>? loanRequested;

Rx<String>? loanAmount;

Rx<String>? appliedDate;

Rx<String>? disbursedDate;

Rx<String>? totalAmount;

Rx<String>? totalAmountValue;

Rx<String>? interest;

Rx<String>? interestValue;

Rx<String>? tenor;

Rx<String>? tenorValue;

Rx<String>? id;

 }
