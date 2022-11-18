import 'package:get/get.dart';

import '../controllers/animated_call_screen_search_page_controller.dart';

class AnimatedCallScreenSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCallScreenSearchPageController>(
      () => AnimatedCallScreenSearchPageController(),
    );
  }
}
