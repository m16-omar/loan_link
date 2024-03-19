import 'package:loan_link/core/app_export.dart';import 'package:loan_link/presentation/personalized_goals_screen/models/personalized_goals_model.dart';/// A controller class for the PersonalizedGoalsScreen.
///
/// This class manages the state of the PersonalizedGoalsScreen, including the
/// current personalizedGoalsModelObj
class PersonalizedGoalsController extends GetxController {Rx<PersonalizedGoalsModel> personalizedGoalsModelObj = PersonalizedGoalsModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

onSelected(dynamic value) { for (var element in personalizedGoalsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalizedGoalsModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in personalizedGoalsModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalizedGoalsModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in personalizedGoalsModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalizedGoalsModelObj.value.dropdownItemList2.refresh(); } 
 }
