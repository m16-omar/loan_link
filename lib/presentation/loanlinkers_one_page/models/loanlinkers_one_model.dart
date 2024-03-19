import '../../../core/app_export.dart';import 'babatunde_item_model.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [loanlinkers_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LoanlinkersOneModel {Rx<List<BabatundeItemModel>> babatundeItemList = Rx([BabatundeItemModel(babatunde: "Babatunde".obs),BabatundeItemModel(babatunde: "Babatunde".obs),BabatundeItemModel(babatunde: "Babatunde".obs)]);

Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(userName: "Abilab Realtors".obs,inviteText: "Invite".obs),Userprofile1ItemModel(userName: "Allure Estate".obs,inviteText: "Invite".obs),Userprofile1ItemModel(userName: "Allure Estate".obs,inviteText: "Invite".obs)]);

 }
