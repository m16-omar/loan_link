import '../../../core/app_export.dart';/// This class is used in the [applyforloan_item_widget] screen.
class ApplyforloanItemModel {ApplyforloanItemModel({this.userImage, this.loanText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgIconsPrimary32x32);loanText = loanText  ?? Rx("Apply for Loan");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? loanText;

Rx<String>? id;

 }
