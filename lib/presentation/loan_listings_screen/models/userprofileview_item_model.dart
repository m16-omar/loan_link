import '../../../core/app_export.dart';/// This class is used in the [userprofileview_item_widget] screen.
class UserprofileviewItemModel {UserprofileviewItemModel({this.userTitle, this.userDescription, this.userFundingGoal, this.id, }) { userTitle = userTitle  ?? Rx("Agriculture");userDescription = userDescription  ?? Rx("Help Tyson get a lawnmower for his  furniture business");userFundingGoal = userFundingGoal  ?? Rx("NGN50,000");id = id  ?? Rx(""); }

Rx<String>? userTitle;

Rx<String>? userDescription;

Rx<String>? userFundingGoal;

Rx<String>? id;

 }
