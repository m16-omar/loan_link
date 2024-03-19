import '../../../core/app_export.dart';/// This class is used in the [borrowernotification_item_widget] screen.
class BorrowernotificationItemModel {BorrowernotificationItemModel({this.icons, this.repaymentSuccessful, this.am, this.image, this.id, }) { icons = icons  ?? Rx(ImageConstant.imgIconsGreenA700);repaymentSuccessful = repaymentSuccessful  ?? Rx("Repayment Successful");am = am  ?? Rx("12/09/2023 10:32 A.M");image = image  ?? Rx(ImageConstant.imgGroup7150);id = id  ?? Rx(""); }

Rx<String>? icons;

Rx<String>? repaymentSuccessful;

Rx<String>? am;

Rx<String>? image;

Rx<String>? id;

 }
