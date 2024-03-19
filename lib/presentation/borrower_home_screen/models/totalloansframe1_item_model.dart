import '../../../core/app_export.dart';/// This class is used in the [totalloansframe1_item_widget] screen.
class Totalloansframe1ItemModel {Totalloansframe1ItemModel({this.totalLoans, this.numberOfLoans, this.id, }) { totalLoans = totalLoans  ?? Rx("Total Loans");numberOfLoans = numberOfLoans  ?? Rx("3");id = id  ?? Rx(""); }

Rx<String>? totalLoans;

Rx<String>? numberOfLoans;

Rx<String>? id;

 }
