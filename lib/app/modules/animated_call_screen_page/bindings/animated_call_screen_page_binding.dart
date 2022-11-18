import 'package:get/get.dart';

import '../controllers/animated_call_screen_page_controller.dart';

class AnimatedCallScreenPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCallScreenPageController>(
      () => AnimatedCallScreenPageController(),
    );
  }
}
