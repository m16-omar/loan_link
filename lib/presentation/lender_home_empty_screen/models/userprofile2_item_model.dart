import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userImage, this.ogun, this.userName, this.userDescription, this.userFundingGoal, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgRectangle20066);ogun = ogun  ?? Rx(ImageConstant.imgIconsBlueGray9008x8);userName = userName  ?? Rx("Ogun");userDescription = userDescription  ?? Rx("Help Tyson get a lawnmower for his  furniture business");userFundingGoal = userFundingGoal  ?? Rx("NGN50,000");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? ogun;

Rx<String>? userName;

Rx<String>? userDescription;

Rx<String>? userFundingGoal;

Rx<String>? id;

 }
