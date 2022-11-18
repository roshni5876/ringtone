import 'package:get/get.dart';

import '../controllers/animated_call_screen_favorites_page_controller.dart';

class AnimatedCallScreenFavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCallScreenFavoritesPageController>(
      () => AnimatedCallScreenFavoritesPageController(),
    );
  }
}
