import 'package:get/get.dart';

import '../controllers/animated_call_screen_home_page_controller.dart';

class AnimatedCallScreenHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCallScreenHomePageController>(
      () => AnimatedCallScreenHomePageController(),
    );
  }
}
