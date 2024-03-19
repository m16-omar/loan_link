import '../../../core/app_export.dart';/// This class is used in the [lendernotification_item_widget] screen.
class LendernotificationItemModel {LendernotificationItemModel({this.icons, this.loanFundingSuccessful, this.am, this.image, this.id, }) { icons = icons  ?? Rx(ImageConstant.imgIconsOnprimarycontainer);loanFundingSuccessful = loanFundingSuccessful  ?? Rx("Loan Funding Successful");am = am  ?? Rx("12/09/2023 10:32 A.M");image = image  ?? Rx(ImageConstant.imgGroup7150);id = id  ?? Rx(""); }

Rx<String>? icons;

Rx<String>? loanFundingSuccessful;

Rx<String>? am;

Rx<String>? image;

Rx<String>? id;

 }
