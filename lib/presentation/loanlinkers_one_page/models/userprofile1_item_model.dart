import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userName, this.inviteText, this.id, }) { userName = userName  ?? Rx("Abilab Realtors");inviteText = inviteText  ?? Rx("Invite");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? inviteText;

Rx<String>? id;

 }
