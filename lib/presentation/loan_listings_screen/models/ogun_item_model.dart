import '../../../core/app_export.dart';/// This class is used in the [ogun_item_widget] screen.
class OgunItemModel {OgunItemModel({this.image, this.helpTysonGetA, this.price, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle20066);helpTysonGetA = helpTysonGetA  ?? Rx("Help Tyson get a lawnmower for his  furniture business");price = price  ?? Rx("NGN50,000");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? helpTysonGetA;

Rx<String>? price;

Rx<String>? id;

 }
