import 'package:get/get.dart';

import '../controllers/animated_call_screen_premium_page_controller.dart';

class AnimatedCallScreenPremiumPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCallScreenPremiumPageController>(
      () => AnimatedCallScreenPremiumPageController(),
    );
  }
}
