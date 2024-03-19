import '../../../core/app_export.dart';/// This class is used in the [loanlink_item_widget] screen.
class LoanlinkItemModel {LoanlinkItemModel({this.image, this.loanLink, this.date, this.time, this.fortyThousand, this.id, }) { image = image  ?? Rx(ImageConstant.imgIconsGreenA70024x24);loanLink = loanLink  ?? Rx("LoanLink");date = date  ?? Rx("17-03-2023");time = time  ?? Rx("6:45pm");fortyThousand = fortyThousand  ?? Rx("40,000");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? loanLink;

Rx<String>? date;

Rx<String>? time;

Rx<String>? fortyThousand;

Rx<String>? id;

 }
