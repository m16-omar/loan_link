import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.helpTysonText, this.ngn50000Text, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgRectangle20066);helpTysonText = helpTysonText  ?? Rx("Help Tyson get a lawnmower for his  furniture business");ngn50000Text = ngn50000Text  ?? Rx("NGN50,000");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? helpTysonText;

Rx<String>? ngn50000Text;

Rx<String>? id;

 }
