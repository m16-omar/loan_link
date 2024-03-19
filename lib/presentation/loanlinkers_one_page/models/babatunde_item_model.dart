import '../../../core/app_export.dart';/// This class is used in the [babatunde_item_widget] screen.
class BabatundeItemModel {BabatundeItemModel({this.babatunde, this.id, }) { babatunde = babatunde  ?? Rx("Babatunde");id = id  ?? Rx(""); }

Rx<String>? babatunde;

Rx<String>? id;

 }
