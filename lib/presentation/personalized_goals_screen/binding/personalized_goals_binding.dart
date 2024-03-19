import '../controller/personalized_goals_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PersonalizedGoalsScreen.
///
/// This class ensures that the PersonalizedGoalsController is created when the
/// PersonalizedGoalsScreen is first loaded.
class PersonalizedGoalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalizedGoalsController());
  }
}
