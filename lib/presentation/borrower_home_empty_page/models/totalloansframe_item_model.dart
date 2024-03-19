import '../../../core/app_export.dart';/// This class is used in the [totalloansframe_item_widget] screen.
class TotalloansframeItemModel {TotalloansframeItemModel({this.totalLoans, this.zero, this.id, }) { totalLoans = totalLoans  ?? Rx("Total Loans");zero = zero  ?? Rx("0");id = id  ?? Rx(""); }

Rx<String>? totalLoans;

Rx<String>? zero;

Rx<String>? id;

 }
