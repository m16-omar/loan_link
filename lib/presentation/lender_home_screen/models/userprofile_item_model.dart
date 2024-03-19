import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.ogun, this.userName, this.helpText, this.amount, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgRectangle20066);ogun = ogun  ?? Rx(ImageConstant.imgIconsBlueGray9008x8);userName = userName  ?? Rx("Ogun");helpText = helpText  ?? Rx("Help Tyson get a lawnmower for his  furniture business");amount = amount  ?? Rx("NGN50,000");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? ogun;

Rx<String>? userName;

Rx<String>? helpText;

Rx<String>? amount;

Rx<String>? id;

 }
