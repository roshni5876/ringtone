import 'package:get/get.dart';

import '../controllers/ring_tones_favorites_page_controller.dart';

class RingTonesFavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesFavoritesPageController>(
      () => RingTonesFavoritesPageController(),
    );
  }
}
